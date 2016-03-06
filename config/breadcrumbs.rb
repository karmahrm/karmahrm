crumb :root do
  link 'Home', root_path
end

crumb :employees_index do
  link 'Employees', employees_path
end

crumb :employees_show do |employee|
  link employee.name, employee_path(employee)
  parent :employees_index
end
crumb :employees_new do
  link 'New'
  parent :employees_index
end
crumb :employees_create do
  link 'New'
  parent :employees_index
end
crumb :employees_edit do |employee|
  link 'Edit'
  parent :employees_show, employee
end
crumb :employees_update do |employee|
  link 'Edit'
  parent :employees_show, employee
end
# Feeds
crumb :feeds_index do
  link 'feeds', root_path
end
# Calendar
crumb :calendar_index do
  link 'Calendar', calendar_index_path
  parent :root
end
crumb :calendar_events_new do
  link 'New Event'
  parent :calendar_index
end
crumb :calendar_events_create do
  link 'New Event'
  parent :calendar_index
end
crumb :calendar_events_show do |calendar_event|
  link calendar_event.title, calendar_events_path(calendar_event)
  parent :calendar_index
end
crumb :calendar_events_edit do |calendar_event|
  link 'Edit'
  parent :calendar_events_show, calendar_event
end
# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
