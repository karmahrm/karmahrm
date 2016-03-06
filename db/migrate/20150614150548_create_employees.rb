class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employee_id
      t.date :date_of_birth
      t.string :gender
      t.string :mobile
      t.date :date_of_join
      t.date :date_of_leaving
      t.date :date_of_confirmation
      t.boolean :is_active, default: true
      t.string :marital_status
      t.string :employment_status
      t.string :city
      t.string :nationality
      t.integer :private_email
      t.string :zipcode

      t.integer :referrer_id
      t.integer :manager_id
      t.string :country_id
      t.references :user
      t.references :department
      t.timestamps null: false
    end
    add_index :employees, :employee_id, unique: true
    add_index :employees, :user_id, unique: true
    add_index :employees, :referrer_id
    add_index :employees, :manager_id
  end
end
