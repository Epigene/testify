ruby '2.3.1'

source 'https://rubygems.org'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'slim', '~> 3.0.7'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'

gem 'simple_form', '~> 3.2.1'

group :development, :test do
  gem "dotenv-rails" # Store environmental variables in .env file in app root
  # Test stack
  gem "rspec-rails", '~> 3.5.1'
  gem "spring-commands-rspec" # Spring for rspec ^
  gem 'factory_girl_rails', :require => false # this false prevents fresh db mgration errors
  gem "timecop" #Testiem ir iespeja mainit laikus
  gem "faker" #šis ģenerē dummy/fake datus pēc pieprasījuma

  gem "simplecov" #ģenerē rspec testu coverage report

  # Convenience
  gem 'pry-rails' # The awesome IRB replacer
  gem 'awesome_print' # rails konsoles prettyfier
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
