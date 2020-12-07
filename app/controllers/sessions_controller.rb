class SessionsController < ApplicationController
  
  def new
    redirect_to '/' if session[:name]
  end 
  
  def create
    session[:name] = params[:name]
    redirect_to '/login'
  end
  
  def destroy
    session.delete :name
  end 
end