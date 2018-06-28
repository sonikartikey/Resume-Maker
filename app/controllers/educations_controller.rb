class EducationsController < ApplicationController
  def index
    @educations = Education.all
  end
  def new 
    @education = Education.new
  end
  def create
    @experinece = Education.create(university_name: params[:education][:university_name],qualification: params[:education][:qualification],stream: params[:education][:stream],percentage: params[:education][:percentage],start_date: params[:education][:start_date],end_date: params[:education][:end_date],user_id: params[:education][:user_id])
    flash[:success] = "Your data has been saved"
    redirect_to educations_path
  end
  def add_more
    @education = Education.new
  end
  def edit
    @education = Education.find(params[:id])
  end
  def update
    @education = Education.find(params[:id])
    @education.update(university_name: params[:education][:university_name],qualification: params[:education][:qualification],stream: params[:education][:stream],percentage: params[:education][:percentage],start_date: params[:education][:start_date],end_date: params[:education][:end_date],user_id: params[:education][:user_id])
    redirect_to education_path(@education.id)
  end
  def show
    @education = Education.find(params[:id])
  end
end
