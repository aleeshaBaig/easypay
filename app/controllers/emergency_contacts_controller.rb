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
      respond_to do |format|
      if  @emergency_contact.save
        format.html { redirect_to personal_informations_url(@emergency_contact), notice: "Education was successfully created." }
        format.json { render :show, status: :created, location: @emergency_contact }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @emergency_contact.errors, status: :unprocessable_entity }
      end
    end
  end
    def  edit
      @emergency_contact  = EmergencyContact.find(params[:id])    
    end
    def  update
      @emergency_contact  = EmergencyContact.find(params[:id])
      respond_to do |format|
      if  @emergency_contact.update(emergency_contact_params)
        format.html { redirect_to personal_informations_url(@emergency_contact), notice: "Education was successfully created." }
        format.json { render :show, status: :created, location: @emergency_contact }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @emergency_contact.errors, status: :unprocessable_entity }
      end
   end
end
    private
    def emergency_contact_params
      params.require(:emergency_contact).permit(:emergency_contact_name, :emergency_contact_relation, :emergency_contact_mobile, :residence_address, :permanent_address, :user_id)
    end
  
  
end
