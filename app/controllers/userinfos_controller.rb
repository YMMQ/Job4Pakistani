class UserinfosController < ApplicationController
  before_action :set_userinfo, only: [:show, :edit, :update, :destroy]

  def index
    @userinfos = Userinfo.all
  end

  def show
  end

  def new
    @userinfo = Userinfo.new
  end

  def edit
    @user = current_user
  end

  def create
    @user = User.find(params[:user_id])
    @userinfo = @user.userinfos.build(userinfo_params)

      if @userinfo.save
        redirect_to @user, notice: 'Profile updated successfully.'
      else
      	flash[:alert] = "All fields are required...!"
        redirect_to @user
      end
  end

  def update
    @user = User.find(params[:user_id])
    @userinfo = @user.userinfos.find(params[:id])

      if @userinfo.update(userinfo_params)
        redirect_to @user, notice: 'Profile updated successfully.'
      else
        flash[:alert] = "All fields are required...!"
        redirect_to @user
      end
  end

  private

    def set_userinfo
      @userinfo = Userinfo.find(params[:id])
    end

    def userinfo_params
      params.require(:userinfo).permit(:user_id, :date_of_birth, :gender, :mobile, :address, :province_id, :city_id, :cnic)
    end
end
