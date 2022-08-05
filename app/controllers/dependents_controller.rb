class DependentsController < ApplicationController
  before_action :authenticate_user!
  def index
    @dependents = Dependent.all
  end
   
  def new
    @dependent = Dependent.new
  end
  def destroy
    @dependent = Dependent.find(params[:id])
    @dependent.destroy

    redirect_to personal_informations_path, status: :see_other
  end
  def create
    @dependent = Dependent.new(dependent_params)
    if @dependent.save
      redirect_to personal_informations_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  def  edit
  @dependent = Dependent.find(params[:id])    
  end
  def  update
    @dependent = Dependent.find(params[:id])
    if @dependent.update(dependent_params)
      redirect_to @dependent
    else
      render :edit, status: :unprocessable_entity

    end
   
  end
  private
  def dependent_params
    params.require(:dependent).permit(:name, :relation, :phone, :mobile, :date_of_birth, :address, :cnic, :nationality, :user_id)
  end
end
