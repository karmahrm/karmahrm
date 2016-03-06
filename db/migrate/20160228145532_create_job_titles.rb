class CreateJobTitles < ActiveRecord::Migration
  def change
    create_table :job_titles do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
