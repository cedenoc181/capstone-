class PhysicalTherapist < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :users, through: :appointments 

    has_secure_password
    validates :email, uniqueness: true
end
