class AddBraidToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :braid, :string
  end
end
