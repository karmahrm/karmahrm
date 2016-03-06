class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.references :user, index: true
      t.references :origin, polymorphic: true, index: true
      t.text :content
      t.string :type
      t.boolean :is_read, default: false
      t.string :path

      t.timestamps null: false
    end
    add_foreign_key :notifications, :users
  end
end
