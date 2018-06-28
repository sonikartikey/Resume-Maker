class AwardsController < ApplicationController
  def index
    @award = Award.new
    @awards = Award.all
  end
  def new 
    @award = Award.new
  end
    def create

    @award = Award.create(description: params[:award][:description],user_id: params[:award][:user_id])
    flash[:success] = "Your data has been saved"
    redirect_to awards_path
  end

    def edit
    @award = Award.find(params[:id])
  end
  def update
    @award = Award.find(params[:id])
    @award.update(description: params[:award][:description],user_id: params[:award][:user_id])
    redirect_to award_path(@award.id)
  end
  def show
    @award = Award.find(params[:id])
  end

  def destroy
    @award = Award.find(params[:id])
    @award.destroy
    redirect_to awards_path
  end

end
