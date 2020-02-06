# Created 11/12/2019 by Ryan Born

class StudentController < ApplicationController
  def new
  	@student = Student.new
  end

  def create
  	@student.f_name = Student.create(params[:f_name]) #first name
  	@student.l_name = Student.create(params[:l_name]) #last name
  	@student.dot_num = Student.create(params[:dot_num]) #student's .#
  	@student.pass = Student.create(params[:pass]) #password
  	@student.year = Student.create(params[:year]) #student's current year
  	@student.major = Student.create(params[:major]) #student's major
  	@student.receiving_email = Student.create(params[:receiving_email])
  	@student.resume_link = Student.create(params[:resume_link])
  end
end
