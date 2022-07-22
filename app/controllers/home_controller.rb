class HomeController < ApplicationController
    before_action :authenticate_user!
   def index
    @bills =current_user.bills
   end
end
