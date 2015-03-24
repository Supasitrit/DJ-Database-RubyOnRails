class StaticPageController < ApplicationController
  def home
  	@djs = Dj.paginate(:page => params[:page], :per_page => 4)
  	# @djs = Dj.find(1,2,15,16)
  	@gears = Gear.paginate(:page=> params[:page], :per_page => 4)
  end
end
