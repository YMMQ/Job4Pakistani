class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_filter :admin

  def index
    @jobs = Job.all
    @user = current_user
  end

  def show
  	@user = current_user
  end

  def new
    @job = Job.new
    @user = current_user
  end

  def edit
  end

  def create
  	@advertise = Advertise.find(params[:advertise_id])
    @job = @advertise.jobs.create(job_params)

      if @job.save
       	redirect_to @advertise, notice: 'Job was successfully created.'
      else
				flash[error] = "Some thing is missing...?"
      end
  end

  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:description, :advertise_id, :work_field_id, :qty, :degre_id, :city_id)
    end
    
    def admin
    	@user = current_user
     unless current_user && User.find_by(email: "amen786uzair786@gmail.com") == current_user
      flash[:alert] = 'Access denied..! Please login as admin.'
      redirect_to @user
     end
    end
end
