# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
    session[:user_id] = ''
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user &. user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user, notice: 'User was successfully sign in, baby!'
    else
      flash.now[:error] = 'Wrong email or password, baby.'
      render 'new'
    end
  end

  def delete
    sign_out current_user
    redirect_to login_path
  end

  def destroy; end
end
