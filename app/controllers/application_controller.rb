class ApplicationController < ActionController::Base
before_action :authenticate_user!
   def after_sign_in_path_for(resource)
      root_path
    end
   def index
    @utility_bills = current_user.utility_bill
   end
end
