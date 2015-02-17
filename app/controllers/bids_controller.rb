class BidsController < ApplicationController
	def index
		@item = Item.find params[:item_id]
		@total_amount = 

	end
	def new
		@bid = Bid.new
	end
	def create
		@bid = Bid.new 
	end
end

# 		@project = Project.find params[:project_id]
# 		@entries = @project.entries
# 		@entries_by_month = @project.entries_by_month(2015, 2)
# 		total_hours = 0
# 		@entries_by_month.each {|entry| total_hours += entry.hours}
# 		@hours = total_hours