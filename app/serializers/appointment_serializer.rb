class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :physical_therapist_id, :claim, :home_visit, :am_pm,  
end
