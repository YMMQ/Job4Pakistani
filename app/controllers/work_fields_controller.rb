class WorkFieldsController < ApplicationController
  before_action :set_work_field, only: [:show, :edit, :update, :destroy]
  before_filter :admin

  def index
    @work_fields = WorkField.all.paginate(page: params[:page])
    @user = current_user
  end

  def show
  	@user = current_user
  end

  def new
    @work_field = WorkField.new
    @user = current_user
  end

  def edit
  end

  def create
    @work_field = WorkField.new(work_field_params)

    respond_to do |format|
      if @work_field.save
        format.html { redirect_to @work_field, notice: 'Work field was successfully created.' }
        format.json { render :show, status: :created, location: @work_field }
      else
        format.html { render :new }
        format.json { render json: @work_field.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @work_field.update(work_field_params)
        format.html { redirect_to @work_field, notice: 'Work field was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_field }
      else
        format.html { render :edit }
        format.json { render json: @work_field.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @work_field.destroy
    respond_to do |format|
      format.html { redirect_to work_fields_url, notice: 'Work field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_work_field
      @work_field = WorkField.find(params[:id])
    end

    def work_field_params
      params.require(:work_field).permit(:field_name)
    end

    def admin
    	@user = current_user
     unless current_user && User.find_by(email: "amen786uzair786@gmail.com") == current_user
      flash[:alert] = 'Access denied..! Please login as admin.'
      redirect_to @user
     end
    end
end
