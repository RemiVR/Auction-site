class Item < ActiveRecord::Base

	validates :name, presence: true
	validates :price, presence: true, numericality: true
	validates :expire, presence: true

	has_attached_file :logo, styles: {:medium => "300x300>", :thumb => "70x70>"}
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
