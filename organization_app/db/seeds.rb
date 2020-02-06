# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'csv'

# Seed meetings:
path = File.join(
    File.dirname(File.dirname(File.dirname(File.absolute_path(__FILE__)))),
    'test_data',
    'meetings.csv'
)

open(path) do |meetings|
    meetings.read.each_line do |meeting|
        id, date, name, meeting_type, sponsor_company, where, blurb, image, created_at, updated_at = CSV.parse_line(meeting)
        puts date
        Meeting.create!(:date => date, :name => name, :sponsor_company => sponsor_company, :where => where, :blurb => blurb, :image => image,:created_at => created_at, :updated_at => updated_at)
    end
end

# Seed students:
path = File.join(
    File.dirname(File.dirname(File.dirname(File.absolute_path(__FILE__)))),
    'test_data',
    'students.csv'
)

open(path) do |students|
    students.read.each_line do |student|
        id, student_id, first, last, dot_number, email, password, year, major, admin, receiving_email, resume_link, created_at, updated_at, image = CSV.parse_line(student)
        puts email
        puts password
        puts image
        Student.create!(:student_id => student_id, :first => first, :last => last, :dot_number => dot_number, :email => email, :password => password, :year => year, :major => major, :admin => admin, :receiving_email => receiving_email, :resume_link => resume_link, :created_at => created_at, :updated_at => updated_at, :image => image)
    end
end

# Seed attendances:
path = File.join(
    File.dirname(File.dirname(File.dirname(File.absolute_path(__FILE__)))),
    'test_data',
    'attendances.csv'
)

open(path) do |attendances|
    attendances.read.each_line do |attendance|
        id, meeting_id, student_id, comment_date, comment_text, rating, created_at, updated_at = CSV.parse_line(attendance)
        puts "second"
        Attendance.create!(:meeting_id => meeting_id, :student_id => student_id, :comment_date => comment_date, :comment_text => comment_text, :rating => rating, :created_at => created_at, :updated_at => updated_at)
    end
end