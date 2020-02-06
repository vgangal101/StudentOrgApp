class Student < ApplicationRecord
	protected
  	# Include default devise modules. Others available are:
  	# :lockable, :timeoutable, :trackable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable#, :confirmable

	def confirmation_required?
		true
	end

  has_many :attendances, foreign_key: 'student_id'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
