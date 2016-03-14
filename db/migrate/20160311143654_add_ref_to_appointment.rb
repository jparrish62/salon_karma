class AddRefToAppointment < ActiveRecord::Migration
  def change
    add_reference :appointments, :user, index: true, foreign_key: true
    add_reference :appointments, :stylist, index: true, foreign_key: true
  end
end
