class WelcomeController < ApplicationController
  before_action :authenticate_student!
  layout "main"

  def index
    @next_meeting = Meeting.where("date >= ?", Time.now).first
    @last_meeting = Meeting.where("date < ?", Time.now).last
    @current_student = current_student
  
    @num_comments = Attendance.where(meeting_id: @last_meeting.id).where.not(comment_text: nil).count
  end

  def calendar
    @current_student = current_student
  end
end
