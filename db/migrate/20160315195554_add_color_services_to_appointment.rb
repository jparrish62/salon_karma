class AddColorServicesToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :color_services, :string
  end
end
