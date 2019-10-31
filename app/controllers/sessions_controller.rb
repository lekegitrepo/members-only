class SessionsController < ApplicationController
  def new
  	session[:user] = Session.new
  end
end
