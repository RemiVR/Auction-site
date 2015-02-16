class ChangeDefaultValueOfBid < ActiveRecord::Migration
	change_column :bids, :price, :float, default: 0
  def change
  end
end
