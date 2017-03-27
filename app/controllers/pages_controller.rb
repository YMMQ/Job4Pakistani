class PagesController < ApplicationController

  def home
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
