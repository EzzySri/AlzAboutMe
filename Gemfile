source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'haml'
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-turbolinks'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

gem 'factory_girl_rails'

# CanCan is an authorization library which restricts what resources a given user is allowed to access.
# All permissions are defined in a single location (the Ability class) 
gem 'cancancan', '~> 1.10'

gem "paperclip", "~> 5.0.0"
gem 'paperclip-av-transcoder'
gem 'remotipart', '~> 1.2'



# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

 group :production do
 	gem 'pg'
 	gem 'rails_12factor'
 end

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'jasmine-rails' # if you plan to use JavaScript/CoffeeScript
end

group :development do  
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.3.0'
end


group :test do
  gem 'rspec-rails'
  gem 'simplecov', :require => false
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels' # basic imperative step defs
  gem 'database_cleaner' # required by Cucumber
  gem 'autotest-rails'
  gem 'factory_girl_rails', :require => false
  gem 'metric_fu'        # collect code metrics
  gem 'codeclimate-test-reporter', require: nil
  # gem 'capybara-webkit'
end
