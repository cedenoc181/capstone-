class User < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :physical_theapists, through: :appointments 
    
    has_secure_password
    validates :username, :email, uniqueness: true
end
