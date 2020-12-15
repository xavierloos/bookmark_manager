# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

# gem "rails"
gem "pg"
gem "sinatra"
gem "capybara", group: :test
gem "rspec", group: :test

group :test do
  gem "capybara"
  gem "rack"
  gem "rspec"
  gem "rubocop", "0.79.0"
  gem "selenium-webdriver"
  gem "simplecov", require: false
  gem "simplecov-console", require: false
end
