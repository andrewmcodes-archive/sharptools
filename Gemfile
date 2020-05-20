source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.6"

# gem "bcrypt", "~> 3.1.7"
gem "bootsnap", ">= 1.4.2", require: false
gem "devise", "~> 4.7"
gem "honeybadger", "~> 4.6"
# gem "image_processing", "~> 1.2"
gem "jbuilder", "~> 2.7"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "rails", "~> 6.0.3", ">= 6.0.3.1"
# gem "redis", "~> 4.0"
gem "turbolinks", "~> 5"
gem "view_component", "~> 2.7"
gem "webpacker", "~> 5.1.1"

group :development, :test do
  gem "solargraph"
  gem "dotenv-rails"
  gem "pry-rails"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "annotate"
  gem "brakeman", "~> 4.8"
  gem "bullet"
  gem "erb_lint"
  gem "htmlbeautifier"
  gem "listen", "~> 3.2"
  gem "standard"
  gem "tmuxinator", "~> 2.0", ">= 2.0.1"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "webdrivers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
