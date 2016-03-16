class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
