class CreateCalendarEvents < ActiveRecord::Migration
  def change
    create_table :calendar_events do |t|
      t.string :title
      t.text :description
      t.text :comments
      t.datetime :start_at
      t.datetime :end_at
      t.string :location_name
      t.text :location_address
      t.references :user, index: true, foreign_key: true
      t.references :calendar_event, index: true, foreign_key: true
      t.references :context, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
