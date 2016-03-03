class CreateStylists < ActiveRecord::Migration
  def change
    create_table :stylists do |t|
      t.string :name
      t.string :position
      t.text :bio
      t.integer :role

      t.timestamps null: false
    end
  end
end
