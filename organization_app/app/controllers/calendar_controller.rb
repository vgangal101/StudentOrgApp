# created and completed by Vardaan Gangal

# setup for the calendar controller -- just needs to keep track of the student logged in
class CalendarController < ApplicationController
    layout "main"

    def index
        @current_student = current_student
    end

end
