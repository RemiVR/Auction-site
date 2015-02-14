class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
    	t.string :name
      t.timestamps null: false
    end
  end
end
