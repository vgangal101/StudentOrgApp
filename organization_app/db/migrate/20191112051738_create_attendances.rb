class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.string :meeting_id
      t.string :student_id
      t.datetime :comment_date
      t.string :comment_text
      t.integer :rating

      t.timestamps
    end
  end
end
