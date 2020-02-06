class AddStudentidToAttendances < ActiveRecord::Migration[6.0]
  def change
    add_reference :attendances, :student_id, foreign_key: { to_table: :students }
  end
end
