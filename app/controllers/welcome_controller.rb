class WelcomeController < ApplicationController
  def index
    @user = User.last.about
    @experience = Experience.all
    @education = Education.all
    @award = Award.all
    @interest = Interest.last
  end
end
