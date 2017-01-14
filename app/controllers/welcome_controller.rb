class WelcomeController < ApplicationController
  def index
    flash[:notice] = "New job, new life. Wish you could find a satisfactory job here!"
  end 
end
