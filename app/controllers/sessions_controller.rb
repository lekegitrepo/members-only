class SessionsController < ApplicationController
  def new
    session[:user_id] = ''
  end

  def create
  end

  def destroy
  end
end
