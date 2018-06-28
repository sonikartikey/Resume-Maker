class AddAttachmentAvatarToAbouts < ActiveRecord::Migration[5.1]
  def self.up
    change_table :abouts do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :abouts, :avatar
  end
end
