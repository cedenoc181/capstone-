class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :physical_therapist_id
      t.string :claim 
      t.boolean :home_visit
      t.date :date
      t.time 

      t.timestamps
    end
  end
end
