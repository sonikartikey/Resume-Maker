class AddQualificationToEducation < ActiveRecord::Migration[5.1]
  def change
    add_column :educations, :qualification, :string
  end
end
