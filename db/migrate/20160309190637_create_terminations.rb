class CreateTerminations < ActiveRecord::Migration
  def change
    create_table :terminations do |t|
      t.references :employee, index: true, foreign_key: true
      t.datetime :date
      t.text :note

      t.timestamps null: false
    end
  end
end
