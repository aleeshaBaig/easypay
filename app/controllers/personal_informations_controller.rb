class PersonalInformationsController < ApplicationController
  before_action :authenticate_user!

   
    def index
      @personal_information = PersonalInformation.all
      @contact_informations = ContactInformation.all
      @dependents = Dependent.all

    end
  
    def show
      @personal_information = PersonalInformation.find(params[:id])
    end
  
    def new
      @personal_information = PersonalInformation.new
    end
  
    def create
      @personal_information  = PersonalInformation.new(personal_information_params)
  
      if @personal_information.save
        redirect_to @personal_information 
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def edit
      @personal_information = PersonalInformation.find(params[:id])
    end
  
    def update
      @personal_information = PersonalInformation.find(params[:id])
  
      if   @personal_information.update(personal_information_params)
        redirect_to   personal_information_path 
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    private
      def  personal_information_params
        params.require(:personal_information).permit(:image,:first_name, :image_cache, :last_name, :date_of_birth, :marital_status, :religion, :cnic, :project, :department, :employment_type, :date_of_joining, :designation,:employee_code)
      end
  end