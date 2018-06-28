class AboutsController < ApplicationController
  def index
    @abouts = About.all
  end
  def new 
    @about = About.new
  end
  def create 
    @about = About.create(name: params[:about][:name], email: params[:about][:email],address: params[:about][:address],description: params[:about][:description],user_id: params[:about][:user_id])
    redirect_to about_path(@about.id)
  end

  def edit
    @about = About.find(params[:id])
  end
  def update
    @about = About.find(params[:id])
    @about.update(name: params[:about][:name], email: params[:about][:email],address: params[:about][:address],description: params[:about][:description],user_id: params[:about][:user_id],avatar: params[:about][:avatar])
    redirect_to about_path(@about.id)
  end
  def show
    @about = About.find(params[:id])
  end
end
