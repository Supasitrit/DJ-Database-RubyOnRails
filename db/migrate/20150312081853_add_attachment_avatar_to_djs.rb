class AddAttachmentAvatarToDjs < ActiveRecord::Migration
  def self.up
    change_table :djs do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :djs, :avatar
  end
end
