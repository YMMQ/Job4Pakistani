class AdvertisesController < ApplicationController
  before_action :set_advertise, only: [:show, :edit, :update, :destroy]
	before_filter :admin, only: [:new, :edit, :update, :destroy]

  def index

    @advertises = Advertise.all.paginate(page: params[:page])
    @user = current_user
    @job = Job.new
  end

  def show
  	@job = Job.new
  	@jobs = Job.all
  end

  def new
    @advertise = Advertise.new
  end

  def edit
  end

  def create
    @advertise = Advertise.new(advertise_params)

    @user = User.find_by_id(params[:user])
    respond_to do |format|
      if @advertise.save
        
        format.html { redirect_to @advertise, notice: 'Advertise was successfully created.' }
        format.json { render :show, status: :created, location: @advertise }
      else
        format.html { render :new }
        format.json { render json: @advertise.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @advertise.update(advertise_params)
        format.html { redirect_to @advertise, notice: 'Advertise was successfully updated.' }
        format.json { render :show, status: :ok, location: @advertise }
      else
        format.html { render :edit }
        format.json { render json: @advertise.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @advertise.destroy
    respond_to do |format|
      format.html { redirect_to advertises_url, notice: 'Advertise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_advertise
      @advertise = Advertise.find(params[:id])
      @user = current_user
    end

    def advertise_params
      params.require(:advertise).permit(:picture, :user_id, :title, :description, :image, :organization_id, :add_date, :last_date)
    end

    def admin
    	@user = current_user
     unless current_user && User.find_by(email: "amen786uzair786@gmail.com") == current_user
      flash[:alert] = 'Access denied..! Please login as admin.'
      redirect_to @user
     end
    end
end
