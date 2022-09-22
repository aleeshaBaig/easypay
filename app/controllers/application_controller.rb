class ApplicationController < ActionController::Base
   include Pagy::Backend
   before_action :authenticate_user!
   def after_sign_in_path_for(resources)  
    if (current_user.email == "admin@gmail.com") && (current_user.password = "password")
      admin_path
    else
      root_path
    end
   end
   def after_sign_out_path(resources)
     redirect_to new_user_session_path
   end
   def index
    @utility_bills = current_user.utility_bill
   end
   
end
