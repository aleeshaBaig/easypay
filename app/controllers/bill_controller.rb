class BillController < ApplicationController
before_action :authenticate_user!

    def index
        @search = BillSearch.new(params[:search])
        @bills = @search.scope
        @bills = current_user.bills
    end

    def show
    @bill = Bill.find(params[:id])
    end
end
