class ChangeCommentToBeTextInAttendances < ActiveRecord::Migration[6.0]
  def change
    change_column :attendances, :comment_text, :text
  end
end
