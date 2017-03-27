class PagesController < ApplicationController

  def home
    
    
    @advertises = Advertise.all.paginate(page: params[:page])
  	@user = current_user
  end

  def about
      @title = 'About |'
      @user = current_user
  end

  def contact
  	@user = current_user
  end
end
