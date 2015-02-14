class AuctionsController < ApplicationController
	def index
		@auction = Auction.all
	end
	def new
		@auction = Auction.new
	end
	def create
		@auction = Auction.new auction_params
		if @auction.save
			redirect_to action: 'index', controller: 'auctions'
		else
			render 'new'
		end
	end
	private
	def auction_params
		params.require(:auction).permit(:name)
	end
end
