class AddChemicalServicesToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :chemical_services, :string
  end
end
