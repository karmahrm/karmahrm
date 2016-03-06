class CreateAuthTokens < ActiveRecord::Migration
  def change
    create_table :auth_tokens do |t|
      t.string :token
      t.string :token_type
      t.references :user, index: true, foreign_key: true
      t.datetime :expires_at

      t.timestamps null: false
    end
  end
end
