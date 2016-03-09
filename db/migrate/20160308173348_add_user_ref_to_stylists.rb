class AddUserRefToStylists < ActiveRecord::Migration
  def change
    add_reference :stylists, :user, index: true, foreign_key: true
  end
end
