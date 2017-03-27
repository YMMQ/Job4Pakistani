class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]

  def index
    @experiences = Experience.all
  end

  def show
  end

  def new
    @experience = Experience.new
  end

  def edit
    @user = current_user
  end

  def create
  	@user = User.find(params[:user_id])
    @experience = @user.experiences.create(experience_params)
      if @experience.save
				redirect_to @user, notice: 'Experience was successfully added.'
      else
      	flash[:alert] = "Please fill all experience fields below..!"
        redirect_to @user
      end
  end

  def update
    @user = User.find(params[:user_id])
    @experience = @user.experiences.find(params[:id])
    if @experience.update(experience_params)
      redirect_to @user, notice: 'Experience was successfully updated.'
    else
      flash[:alert] = "Please fill all experience fields below..!"
      redirect_to @user
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience
      @experience = Experience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experience_params
      params.require(:experience).permit(:work_type, :start_date, :end_date, :work_field_id, :user_id, :organization_id, :city_id)
    end
end
