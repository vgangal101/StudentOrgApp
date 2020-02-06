class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :first
      t.string :last
      t.integer :dot_number
      t.string :pass
      t.string :year
      t.string :major
      t.string :admin
      t.string :receiving_email
      t.string :resume_link

      t.timestamps
    end
  end
end
