class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :university_name
      t.string :stream
      t.string :percentage
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
