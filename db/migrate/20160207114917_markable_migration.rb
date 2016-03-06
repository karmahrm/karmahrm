class MarkableMigration < ActiveRecord::Migration
  def self.up
    create_table :marks do |t|
      t.references :marker,   polymorphic: true
      t.references :markable, polymorphic: true
      t.string     :mark,     limit: 128
      t.datetime   :created_at
    end

    add_index :marks, [:markable_id, :markable_type, :mark]
    add_index :marks, [:marker_id, :marker_type, :mark]
  end

  def self.down
    drop_table :marks
  end
end
