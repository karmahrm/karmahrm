class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :content
      t.integer :attachments_count
      t.text :limit_to_users
      t.datetime :start_delivering_at
      t.datetime :stop_delivering_at

      t.timestamps null: false
    end
  end
end
