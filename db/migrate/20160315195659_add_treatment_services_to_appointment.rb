class AddTreatmentServicesToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :treatment_services, :string
  end
end
