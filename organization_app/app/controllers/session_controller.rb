# Created 11/12/2019 by Ryan Born

class SessionController < ApplicationController
  def new
  end

  def create
  	@student = Student.find_by(dot_num: params[:dot_num])

  	if @student && @student.authenticate(params[:pass])
  		redirect_to '/welcome'
  	else
  		redirect_to '/login'
  	end
  end

  def login
  end

  def welcome
  end
end
