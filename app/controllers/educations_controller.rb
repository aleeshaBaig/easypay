class EducationsController < ApplicationController
before_action :authenticate_user!
    def index
      @educations = Education.where(user_id: current_user.id)

    end

    def show
    @education= Education.find(params[:id])
    end

    def new
    @education= Education.new
    end

    def create
    @education = Education.new(education_params)


    if @education.save
    redirect_to @education
    else
    render :new, status: :unprocessable_entity
    end
    end
    def destroy
    @education = Education.find(params[:id])
    @education.destroy

    redirect_to education_path, status: :see_other
    end

    def edit
    @education= Education.find(params[:id])
    end

    def update
    @education= Education.find(params[:id])

    if   @education.update(education_params)
    redirect_to   personal_information_path 
    else
    render :edit, status: :unprocessable_entity
    end
    end

    private
    def  education_params
    params.require(:education).permit(:title, :major, :institute, :date, :user_id)
    end
    end

