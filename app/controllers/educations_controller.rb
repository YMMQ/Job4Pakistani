class EducationsController < ApplicationController
  before_action :set_education, only: [:show, :edit, :update, :destroy]

  def index
    @educations = Education.all
  end

  def show
  end

  def new
    @education = Education.new
  end

  def edit
    @user = current_user
  end

  def create
  	@user = User.find(params[:user_id])
    @education = @user.educations.create(education_params)
      if @education.save
        redirect_to @user, notice: 'Education was successfully added.'
      else
      	flash[:alert] = "Please fill complete form below..!"
        redirect_to @user
      end
  end

  def update
    @user = User.find(params[:user_id])
    @education = @user.educations.find(params[:id])
    if @education.update(education_params)
      redirect_to @user, notice: 'Education was successfully updated.'
    else
      flash[:alert] = "Please fill complete form below..!"
      redirect_to @user
    end
  end

  private

    def set_education
      @education = Education.find(params[:id])
    end

    def education_params
      params.require(:education).permit(:division_id, :tdegree_id, :subject, :total_marks, :obtained_marks, :pass_year, :user_id, :degre_id, :institute_id)
    end
end
