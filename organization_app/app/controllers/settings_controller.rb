# created, modified and completed by Vardaan Gangal 

class SettingsController < ApplicationController
	before_action :authenticate_student!
	layout "main"

	# base for the controller -- picks up the student to modifiy 
	def index
		@student = current_student
		@current_student = current_student
	end


	# update the values for the student in question
	def update
		current_student.major = params["major"]
		current_student.first = params["first"]
		current_student.last = params["last"]
		puts params["dot_number"]
		current_student.dot_number = params["dot_number"].to_i
		current_student.year = params["year"].to_i
		current_student.email = params["email"]
		
		current_student.save

		redirect_to '/settings/index'
	end
	
end
