class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :name
    	t.datetime :expire
    	t.integer :price
    	t.integer :bid
      t.timestamps null: false
    end
  end
end
