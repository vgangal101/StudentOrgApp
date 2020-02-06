class AddDeletestudentidstudentidToAttendances < ActiveRecord::Migration[6.0]
  def change
    remove_column :attendances, :student_id_id
    remove_column :attendances, :student_id
    add_reference :attendances, :student, foreign_key: { to_table: :students }
  end
end
