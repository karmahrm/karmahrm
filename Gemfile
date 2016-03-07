source 'https://rubygems.org'
ruby '2.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2.0'
# Use sqlite3 as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3.5'
gem 'bootstrap-datepicker-rails'

gem 'devise-bootstrap-views'
gem 'bh', '~> 1.3'
gem 'font-awesome-sass', '~> 4.4.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'nprogress-rails'

# Build JSON APIs with ease. Read more: https://githubg.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'active_model_serializers'
gem 'ffaker'
gem 'react-rails'
gem 'devise'
gem 'responders', '~> 2.0'
gem 'thin'
gem 'execjs'
# Role based auth
gem 'access-granted', '~> 1.0.0'
gem 'rolify'

gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
# gem 'omniauth-linkedin'
gem 'omniauth-linkedin'
gem 'paperclip', '~> 4.2'
gem 'mailboxer'
gem 'will_paginate', '~> 3.0.6'
gem 'simple_form'
gem 'country_select'
gem 'ransack'
gem 'acts-as-taggable-on', '~> 3.4'
gem 'bootstrap-tagsinput-rails'
# server
# gem 'puma'
# pretend as another user
gem 'pretender'
gem 'audited-activerecord', '~> 4.0'
gem 'mailgun_rails'
gem 'gravatarify', '~> 3.0.0'
gem 'delayed_job_active_record'
# gem 'rails-settings-ui'
# gem 'rails-settings-cached', '0.4.1'
gem 'whenever', require: false
gem 'daemons'
# search using elastic search
gem 'searchkick'
gem 'searchjoy'
# typeahead
gem 'twitter-typeahead-rails'
# breadcrumb
gem 'gretel'
# Proc File
gem 'foreman'
# mark as favourite
gem 'markable', github: 'tachyons/markable'
# Observers
gem 'rails-observers'

# plugins
gem 'acts_as_pluggable', github: 'tachyons/acts_as_pluggable'
# gem 'acts_as_pluggable',path: '~/projects/acts_as_pluggable'

Dir.entries('plugins').select { |f| !File.directory? f }.each do |plugin|
  gem plugin, path: 'plugins/' + plugin
end

# Admin LTE
gem 'adminlte2-rails', github: 'tachyons/adminlte2-rails'
# gem 'adminlte2-rails' ,path:'../adminlte2-rails'

# Oauth provider
gem 'doorkeeper'
# Icalender
gem 'icalendar'
# Jquery data table
gem 'jquery-datatables-rails', '~> 3.3.0'
# Select2
gem 'select2-rails'
# Chosen
gem 'chosen-rails'
# Date validator
gem 'date_validator'
# ActiveModel Associations
gem 'activemodel-associations'

group :production do
  gem 'puma'
  gem 'rails_12factor'
end

group :test do
  gem 'shoulda-matchers', '~> 3.1'
  gem 'factory_girl_rails'
end

group :development, :test do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rspec-rails', '~> 3.0'
end
group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # custom
  gem 'hirb'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
  gem 'awesome_print', require: 'ap'
  gem 'meta_request'
  gem 'peek'
  gem 'pry-rails'
  gem 'bullet'
  gem 'rubocop', require: false
  gem 'brakeman', require: false
  gem 'annotate', require: false
  gem 'rack-mini-profiler', require: false
  gem 'rails_best_practices', require: false
  gem 'request-log-analyzer', require: false
  # gem 'lol_dba'
end
