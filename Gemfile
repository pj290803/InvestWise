source "https://rubygems.org"

# Web Framework (Rails)
gem "rails", "~> 7.2.2"
gem 'bootsnap', require: false


# Database (SQLite for Development & Testing, Postgres for Production)
gem "sqlite3", ">= 1.4", group: [:development, :test]
gem "pg", "~> 1.1", group: [:production]

# For background jobs (for heavy calculations or data fetching)
gem "sidekiq"

# For real-time financial data (Yahoo Finance API)
gem 'yahoo-finance'

# API to handle user authentication (if needed)
gem 'devise'

# For handling JavaScript assets and front-end interactivity
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"

# For caching and faster performance
gem "redis", "~> 4.0"

# To handle data visualization (charts, graphs for stock performance)
gem "chartkick"
gem "groupdate"

# For data processing (used to calculate investment plans, risk tolerance, etc.)
gem "ruby-prof"
gem "bigdecimal"

# For Active Storage (if you need to handle file uploads for reports, etc.)
gem "image_processing", "~> 1.2"

# For testing
gem "rspec-rails", "~> 5.0"
gem "capybara"
gem "selenium-webdriver"

# For security
gem "brakeman", require: false
gem "rubocop", require: false
gem "rails-i18n"  # for internationalization

group :development do
  gem "web-console"
  gem "listen", "~> 3.3"
  gem "byebug"
end

gem 'csv'
gem 'tzinfo-data'
gem 'puma'
# Gemfile
gem 'turbo-rails'
gem 'http'

group :test do
  gem "factory_bot_rails"
end
