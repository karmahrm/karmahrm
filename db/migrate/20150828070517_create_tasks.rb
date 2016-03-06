class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :employee, index: true
      t.text:content
      t.date:start_date
      t.date:end_date
      t.boolean :is_delete, default: false
      t.integer:priority
      t.integer:owner_id
      t.timestamps null: false
    end
  end
end
