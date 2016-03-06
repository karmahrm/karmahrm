class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
    	 t.string :name
    	 t.references :company

	     t.timestamps null: false
    end
  end
end
