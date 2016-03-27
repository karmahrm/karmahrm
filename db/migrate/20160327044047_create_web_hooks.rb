class CreateWebHooks < ActiveRecord::Migration
  def change
    create_table :web_hooks do |t|
      t.string :type
      t.references :resource, polymorphic: true, index: true
      t.references :user, index: true, foreign_key: true
      t.string :url
      t.boolean :enable_ssl_verification

      t.timestamps null: false
    end
  end
end
