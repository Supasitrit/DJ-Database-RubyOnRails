class AddAttachmentAvatarToGears < ActiveRecord::Migration
  def self.up
    change_table :gears do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :gears, :avatar
  end
end
