class SessionsController < ApplicationController
  def new
    session[:user_id] = ''
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      redirect_to user
    end
  end

  def destroy
  end
end
