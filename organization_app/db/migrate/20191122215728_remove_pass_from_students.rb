class RemovePassFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :pass
  end
end
