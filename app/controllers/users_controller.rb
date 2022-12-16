class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found


    def index 
        user = User.all
        render json: user, status: :ok
    end 

    def show 
        user = find_user
        render json: user, serializer: UserSerializer 
    end 

    def create
       user = User.create!(create_user_params)
       render json: user
    end 

    def update 
      user = find_user
      user.update!(update_user_params)
     render json: user 
    end 

    def destroy
     user = find_user
     user.destroy
     head :no_content 
    end 

    private 

    def find_user 
        user = User.find(params[:id])
    end 

    def create_user_params 
      params.permit(:username, :password, :email)
    end 

    def update_user_params
      params.permit(:first_name, :last_name, :email, :DOB, :state, :city, :insurer)
    end 

    def render_record_not_found 
      render json: { error: "User not found" }, status: :not_found 
    end 

end
