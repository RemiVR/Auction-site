class ItemsController < ApplicationController
	def index
		@item = Item.all
	end
	def new
		@item = Item.new
	end
	def create
		@item = Item.new item_params
		if @item.save
			redirect_to items_path
		else
			render 'new'
		end
	end
	def edit
		@item = Item.find(params[:id])
	end
	def update
		@item = Item.find(params[:id])
		@item.update_attributes item_params
	end
	private
	def item_params
		params.require(:item).permit(:name, :price, :expire, :logo)
	end
end
