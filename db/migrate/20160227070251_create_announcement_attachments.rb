class CreateAnnouncementAttachments < ActiveRecord::Migration
  def change
    create_table :announcement_attachments do |t|
      t.references :announcement, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
