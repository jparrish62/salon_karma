class AddWeaveToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :weaves, :string
  end
end
