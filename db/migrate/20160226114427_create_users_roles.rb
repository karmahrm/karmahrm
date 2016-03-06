class CreateUsersRoles < ActiveRecord::Migration
  def change
    create_join_table :users, :roles do |t|
      t.index :user_id
      t.index :role_id
    end
  end
end
