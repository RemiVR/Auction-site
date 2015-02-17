class AddItemId < ActiveRecord::Migration
  def change
  	add_column :bids, :item_id, :integer
  	add_column :bids, :user_id, :integer
  end
end
