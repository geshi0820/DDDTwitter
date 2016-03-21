source 'https://rubygems.org'



group :default do
  gem 'rails', '4.2.5.1'
  gem 'mysql2'
  gem 'sass-rails'
  gem 'uglifier'
  gem 'coffee-rails'
  gem 'bcrypt', '~> 3.1.7'
end


# Use ActiveModel has_secure_password

# Use Unicorn as the application server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  gem 'spring'
  gem 'spring-commands-rspec'

  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-stack_explorer'
  gem 'pry-byebug'

  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-spring'

  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'bullet'
  gem 'quiet_assets'
  gem 'rails_best_practices'
  # gem 'did_you_mean'

  gem 'annotate'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'rspec-request_describer'
  gem 'autodoc'
  gem 'json_spec'
end

group :doc do
  gem 'sdoc', '~> 0.4.0'
end
