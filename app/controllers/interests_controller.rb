class InterestsController < ApplicationController
  def index
    @interests = Interest.all
  end
  def new
    @interest = Interest.new
  end
  def create
    @interest = Interest.create(description: params[:interest][:description], user_id: params[:interest][:user_id])
    redirect_to root_path
  end
  def edit
    @interest = Interest.find(params[:id])
  end
  def update
    @interest = Interest.find(params[:id])
    @interest.update(description: params[:interest][:description], user_id: params[:interest][:user_id])
    redirect_to interest_path(@interest.id)
  end
  def show
    @interest = Interest.find(params[:id])
  end
end
