class Stylist < ActiveRecord::Base
    validates :name,     presence:    true
    validates :position, presence:    true
    validates :role,     presence:    true
end
