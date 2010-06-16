group :test do
  # rspec gems - functional and unit tests
  gem "rspec-rails",        ">= 2.0.0.beta.10", :git => "git://github.com/rspec/rspec-rails.git"
  gem "rspec",              ">= 2.0.0.beta.10", :git => "git://github.com/rspec/rspec.git"
  gem "rspec-core",         ">= 2.0.0.beta.10", :git => "git://github.com/rspec/rspec-core.git"
  gem "rspec-expectations", ">= 2.0.0.beta.10", :git => "git://github.com/rspec/rspec-expectations.git"
  gem "rspec-mocks",        ">= 2.0.0.beta.10", :git => "git://github.com/rspec/rspec-mocks.git"

  # cucumber & capybara gems - integration tests
  gem 'capybara'
  gem 'database_cleaner'
  gem 'cucumber-rails'
  gem 'cucumber', '0.7.3'
  gem 'spork'
  gem 'launchy'
  gem 'redgreen'

  # factory girl - replaces default fixtures with much more readable factories
  gem 'factory_girl', :git => 'git://github.com/thoughtbot/factory_girl.git', :branch => 'rails3'
end