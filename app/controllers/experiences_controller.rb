class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
  end
  def new
    @experience = Experience.new
  end
  def create
    @experinece = Experience.create(designation: params[:experience][:designation],company: params[:experience][:company],description: params[:experience][:description],start_date: params[:experience][:start_date],end_date: params[:experience][:end_date],user_id: params[:experience][:user_id])
    redirect_to experiences_path
  end
def edit
    @experience = Experience.find(params[:id])
  end
  def update
    @experience = Experience.find(params[:id])
    @experience.update(designation: params[:experience][:designation],company: params[:experience][:company],description: params[:experience][:description],start_date: params[:experience][:start_date],end_date: params[:experience][:end_date],user_id: params[:experience][:user_id])
    redirect_to experience_path(@experience.id)
  end
  def show
    @experience = Experience.find(params[:id])
  end
end
