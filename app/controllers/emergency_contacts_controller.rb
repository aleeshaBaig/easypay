class EmergencyContactsController < ApplicationController
before_action :authenticate_user!
    def index
      @emergency_contacts = current_user.emergency_contacts
    end
     
    def new
      @emergency_contact = EmergencyContact.new
    end
    def destroy
      @emergency_contact  = EmergencyContact.find(params[:id])
      @emergency_contact.destroy
  
      redirect_to personal_informations_path, status: :see_other
    end
    def create
      @emergency_contact  = EmergencyContact.new(emergency_contact_params)
      if  @emergency_contact.save
        redirect_to personal_informations_path
      else
        render :new, status: :unprocessable_entity
      end
    end
    def  edit
      @emergency_contact  = EmergencyContact.find(params[:id])    
    end
    def  update
      @emergency_contact  = EmergencyContact.find(params[:id])
      if  @emergency_contact.update(emergency_contact_params)
        redirect_to personal_informations_path
      else
        render :edit, status: :unprocessable_entity
  
      end
     
    end
    private
    def emergency_contact_params
      params.require(:emergency_contact).permit(:emergency_contact_name, :emergency_contact_relation, :emergency_contact_mobile, :residence_address, :permanent_address, :user_id)
    end
  
  
end
