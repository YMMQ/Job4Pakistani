class DegresController < ApplicationController
  before_action :set_degre, only: [:show, :edit, :update, :destroy]
  before_filter :admin

  def index
    @degres = Degre.all
    @user = current_user
  end

  def show
  	@user = current_user
  end

  def new
    @degre = Degre.new
    @user = current_user
  end

  def edit
  end

  def create
    @degre = Degre.new(degre_params)

    respond_to do |format|
      if @degre.save
        format.html { redirect_to @degre, notice: 'Degre was successfully created.' }
        format.json { render :show, status: :created, location: @degre }
      else
        format.html { render :new }
        format.json { render json: @degre.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @degre.update(degre_params)
        format.html { redirect_to @degre, notice: 'Degre was successfully updated.' }
        format.json { render :show, status: :ok, location: @degre }
      else
        format.html { render :edit }
        format.json { render json: @degre.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @degre.destroy
    respond_to do |format|
      format.html { redirect_to degres_url, notice: 'Degre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_degre
      @degre = Degre.find(params[:id])
    end

    def degre_params
      params.require(:degre).permit(:name, :tdegree_id)
    end

    def admin
    	@user = current_user
     unless current_user && User.find_by(email: "amen786uzair786@gmail.com") == current_user
      flash[:alert] = 'Access denied..! Please login as admin.'
      redirect_to @user
     end
    end
end
