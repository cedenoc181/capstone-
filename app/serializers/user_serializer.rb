class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :insurer, :first_name, :last_name, :state, :city, :DOB
end
