class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :date
      t.string :time
      t.string :hair_style
      t.string :comment

      t.timestamps null: false
    end
  end
end
