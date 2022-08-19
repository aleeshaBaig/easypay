class PersonalInformationsController < ApplicationController
  before_action :authenticate_user!

   
    def index
      @personal_information = current_user.personal_information
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
       respond_to do |format|
      if @personal_information.save
        format.html { redirect_to personal_informations_url(@personal_information), notice: "personal_information was successfully created." }
        format.json { render :show, status: :created, location: @personal_information }
       else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @personal_information.errors, status: :unprocessable_entity }   
      end
    end
  end
 
  
    def edit
      @personal_information = PersonalInformation.find(params[:id])
    end
  
    def update
      @personal_information = PersonalInformation.find(params[:id])
      respond_to do |format|
        if   @personal_information.update(personal_information_params)
          format.html { redirect_to personal_informations_url(@personal_information), notice: "personal_information was successfully updated." }
          format.json { render :show, status: :ok, location: @personal_information }  
            else
              format.html { render :edit, status: :unprocessable_entity }
              format.json { render json: @personal_information.errors, status: :unprocessable_entity }   
      end
    end
  end


  
    private
      def  personal_information_params
        params.require(:personal_information).permit(:image,:first_name, :image_cache, :last_name, :date_of_birth, :marital_status, :religion, :cnic, :project, :department, :employment_type, :date_of_joining, :designation,:employee_code, :user_id)
      end
  end