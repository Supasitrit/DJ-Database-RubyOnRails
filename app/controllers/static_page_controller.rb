class StaticPageController < ApplicationController
  def home
  	# @djs = Dj.paginate(:page => params[:page], :per_page => 4)
  	@djs = Dj.find(15,2,5,1)
  	@gears = Gear.paginate(:page=> params[:page], :per_page => 4)
  end
end
