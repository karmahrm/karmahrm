class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.string :activities, array: true, length: 30, using: 'gin', default: '{}'
      t.timestamps null: false
    end
  end
end
