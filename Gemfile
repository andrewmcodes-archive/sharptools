source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.6"

gem "acts-as-taggable-on", "~> 6.5"
gem "bootsnap", "~> 1.4", ">= 1.4.2"
gem "devise", "~> 4.7"
gem "hightop", "~> 0.2.2"
gem "honeybadger", "~> 4.6"
# gem "jbuilder", "~> 2.7"
gem "pg", "~> 1.2", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "rails", "~> 6.0", ">= 6.0.3.1"
# gem "redis", "~> 4.0"
gem "strong_migrations", "~> 0.6.8"
gem "turbolinks", "~> 5.2"
gem "view_component", "~> 2.7"
gem "webpacker", "~> 5.1"

group :development, :test do
  gem "solargraph", "~> 0.39.7"
  gem "dotenv-rails", "~> 2.7"
  gem "pry-rails", "~> 0.3.9"
  gem "byebug", "~> 11.1"
end

group :development do
  gem "annotate", "~> 3.1"
  gem "brakeman", "~> 4.8"
  gem "bullet", "~> 6.1"
  gem "erb_lint", "~> 0.0.32"
  gem "htmlbeautifier", "~> 1.3"
  gem "listen", "~> 3.2"
  gem "model_probe", "~> 1.0"
  gem "standard", "~> 0.4.2"
  gem "strong_versions", "~> 0.4.4"
  gem "tmuxinator", "~> 2.0", ">= 2.0.1"
  gem "web-console", "~> 4.0"
end

group :test do
  gem "capybara", "~> 3.32"
  gem "selenium-webdriver", "~> 3.142"
  gem "webdrivers", "~> 4.3"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
