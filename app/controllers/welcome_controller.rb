class WelcomeController < ApplicationController
  PER = 9
  
  def index
    @pages = Topic.page(params[:page]).per(PER)
  end
  
end
