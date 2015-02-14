class AddImages < ActiveRecord::Migration
	def self.up
    	add_attachment :items, :logo
  	end
  	def self.down
    	remove_attachment :items, :logo
	end
end
