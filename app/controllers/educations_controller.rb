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
  
      respond_to do |format|
        if @education.save
          format.html { redirect_to educations_url(@education), notice: "Education was successfully created." }
          format.json { render :show, status: :created, location: @education }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @education.errors, status: :unprocessable_entity }
        end
      end
    end
    # DELETE /educations/1 or /educations/1.json
  def destroy
    @education = Education.find(params[:id])
    @education.destroy

    respond_to do |format|
      format.html { redirect_to educations_url, notice: "Education was successfully destroyed." }
      format.json { head :no_content }
    end
  end


    def edit
    @education= Education.find(params[:id])
    end

      # PATCH/PUT /educations/1 or /educations/1.json
  def update
    @education = Education.find(params[:id])

    respond_to do |format|
      if @education.update(education_params)
        format.html { redirect_to educations_url(@education), notice: "Education was successfully updated." }
        format.json { render :show, status: :ok, location: @education }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end


  def filter_institute
    
    if params[:data].empty?
   @educations=current_user.educations
    else 
   @educations= Education.where(institute: params[:data]).where(user_id: current_user.id) #object
    end
   respond_to do |format|
    format.js
    format.html {root_path}
   end
   
  end

    private
    def  education_params
    params.require(:education).permit(:title, :major, :institute, :date, :user_id)
    end
    end

