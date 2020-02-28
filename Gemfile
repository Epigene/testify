ruby '2.3.1'

source 'https://rubygems.org'

gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.19.0'
gem 'puma', '~> 3.12.3'
gem 'slim', '~> 3.0.7'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails', '~> 4.1.1'
gem 'jbuilder', '~> 2.5'

gem 'simple_form', '~> 3.2.1'

gem 'rest-client', '~> 2.0.0', require: false

group :development, :test do
  gem "dotenv-rails" # Store environmental variables in .env file in app root
  # Test stack
  gem "rspec-rails", '~> 3.5.1'
  gem "spring-commands-rspec", '~> 1.0.4' # Spring for rspec ^
  gem 'factory_girl_rails', '~> 4.7.0', require: false # this false prevents fresh db mgration errors
  gem "timecop", '~> 0.8.1' # Testiem ir iespeja mainit laikus

  gem "simplecov", '~> 0.12.0' # ģenerē rspec testu coverage report

  # Convenience
  gem 'pry-rails', '~> 0.3.4'  # The awesome IRB replacer
  gem 'awesome_print', '~> 1.7.0' # rails konsoles prettyfier
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring', '~> 1.7.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
