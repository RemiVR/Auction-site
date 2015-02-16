class Bid < ActiveRecord::Base
	belongs_to :item
	belongs_to :user

	validates :price, presence: true, numericality: true
end
