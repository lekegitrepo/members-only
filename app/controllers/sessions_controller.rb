class SessionsController < ApplicationController
  def new
  	log_in
  end
end
