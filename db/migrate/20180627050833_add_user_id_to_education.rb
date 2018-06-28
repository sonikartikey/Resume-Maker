class AddUserIdToEducation < ActiveRecord::Migration[5.1]
  def change
    add_column :educations, :user_id, :integer
  end
end
