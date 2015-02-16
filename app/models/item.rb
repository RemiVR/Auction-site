class Item < ActiveRecord::Base
	has_many :bids

	validates :name, presence: true
	validates :price, presence: true, numericality: true
	validates :expire, presence: true

	has_attached_file :logo, styles: {:medium => "300x300>", :thumb => "130x130>"}
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
