class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.datetime :date
      t.string :name
      t.string :type
      t.string :sponsor_company
      t.string :where
      t.text :blurb
      t.text :image

      t.timestamps
    end
  end
end
