class AdminController < ApplicationController
  def index
  end
 def bills 
  @Bills = Bill.all
 end
 def utility_bills   
  @pagy, @utility_bills = pagy(UtilityBill.all)

 end
  def users
    @users = User.all
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to login_path, status: :see_other
  end
end
