class DependentsController < ApplicationController
  before_action :authenticate_user!
  def index
    @dependent = Dependent.all
  end
   
  def new
    @dependent = Dependent.new
  end
 
  def create
    @dependent = Dependent.new(dependent_params)
    respond_to do |format|
    if @dependent.save
      format.html { redirect_to personal_informations_url(@dependent), notice: "dependents was successfully created." }
      format.json { render :show, status: :created, location: @dependent }
     else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @dependent.errors, status: :unprocessable_entity }
    end
  end
end
  def destroy
    @dependent = Dependent.find(params[:id])
    @dependent.destroy


    respond_to do |format|
      format.html { redirect_to personal_informations_url, notice: "dependents was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  def  edit
  @dependent = Dependent.find(params[:id])    
  end
  def  update
    @dependent = Dependent.find(params[:id])
    respond_to do |format|
    if @dependent.update(dependent_params)
      format.html { redirect_to personal_informations_url(@personal_information), notice: "dependents was successfully updated." }
        format.json { render :show, status: :ok, location: @dependent }
     else
      format.html { render :edit, status: :unprocessable_entity }
      format.json { render json: @dependent.errors, status: :unprocessable_entity }
    end
  end
end
  private
  def dependent_params
    params.require(:dependent).permit(:name, :relation, :phone,:date_of_birth, :address, :cnic, :nationality, :user_id)
  end
end
