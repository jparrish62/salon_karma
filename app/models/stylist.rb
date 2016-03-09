class Stylist < ActiveRecord::Base
    validates :name,     presence:    true
    validates :position, presence:    true
    validates :role,     presence:    true
    belongs_to :users
    has_attached_file :image, styles: { medium: "300*300>"}
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
