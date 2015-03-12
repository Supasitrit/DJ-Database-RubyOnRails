class StaticPageController < ApplicationController
  def home
  	@djs = Dj.paginate(:page => params[:page], :per_page => 3)
  	@gears = Gear.all
  end
end
