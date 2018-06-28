class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.string :designation
      t.string :company
      t.string :description
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
