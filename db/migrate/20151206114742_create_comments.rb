class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :type
      t.text :content
      t.references :origin, polymorphic: true, index: true
      t.references :user, index: true
      t.timestamps null: false
    end
  end
end
