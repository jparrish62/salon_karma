class Appointment < ActiveRecord::Base
    validates :name, presence: true
    validates :date, presence: true
    validates :time, presence: true
    belongs_to :user
    belongs_to :stylist 
end
