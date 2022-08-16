class PersonalInformationsController < ApplicationController
  before_action :authenticate_user!

   
    def index
      @personal_information = current_user.personal_information
      @contact_informations = ContactInformation.all.where("contact_informations.user_id = #{current_user.id}")
      @dependents = Dependent.all.where("dependents.user_id = #{current_user.id}")
      @emergency_contacts = EmergencyContact.all.where("emergency_contacts.user_id = #{current_user.id}")


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
        redirect_to   @personal_information 
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    private
      def  personal_information_params
        params.require(:personal_information).permit(:image,:first_name, :image_cache, :last_name, :date_of_birth, :marital_status, :religion, :cnic, :project, :department, :employment_type, :date_of_joining, :designation,:employee_code, :user_id)
      end
  end