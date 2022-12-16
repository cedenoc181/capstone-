class Appointment < ApplicationRecord
    belongs_to :user 
    belongs_to :physical_therapist

    # validates :user_id, :physical_therapist_id, :scheduled, :am_pm, :home_visit, presence: true  
end
