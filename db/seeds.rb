# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
company = Company.create(name: 'Simple Company')
5.times do
   department = company.departments.build
   department.name = FFaker::Company.name
   10.times do
      employee = Employee.create(
        date_of_birth: FFaker::Time.date,
        date_of_join: FFaker::Time.date,
        employee_id: FFaker::Identification.ssn,
        department: department,
        user_attributes: {
          first_name: FFaker::Name.first_name,
          last_name: FFaker::Name.last_name,
          # avatar: FFaker::Avatar.image,
          email: FFaker::Internet.email,
          password: FFaker::Internet.password
        }
      )
      puts 'employee created'
   end
end
test_emails = ['aboobackervyd@gmail.com', 'mastersdream@gmail.com', 'sobisunny@gmail.com']
test_emails.each_with_index do |email, index|
   employee = Employee.create(
     department: Department.last,
     employee_id: 85 + index,
     user_attributes: {
       first_name: FFaker::Name.first_name,
       last_name: FFaker::Name.last_name,
       # avatar: FFaker::Avatar.image,
       email: email,
       password: '12345678'
     }
   )
end
case Rails.env

when 'development'

when 'production'

end
