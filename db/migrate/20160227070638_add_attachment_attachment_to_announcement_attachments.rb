class AddAttachmentAttachmentToAnnouncementAttachments < ActiveRecord::Migration
  def self.up
    change_table :announcement_attachments do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :announcement_attachments, :attachment
  end
end
