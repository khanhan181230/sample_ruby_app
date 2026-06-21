source "https://rubygems.org"

ruby "3.3.6"

gem "rails", "~> 8.1.3"

# Asset pipeline (Rails 8 default — replaces Sprockets)
gem "propshaft"

# Database
gem "sqlite3", ">= 2.1"

# Web server
gem "puma", ">= 5.0"

# JavaScript via import maps (Rails 8 default)
gem "importmap-rails"

# Hotwire — replaces Turbolinks from the tutorial's original Gemfile
gem "turbo-rails"
gem "stimulus-rails"

# JSON building (used by jbuilder views, not needed for this app but
# harmless to leave in since it's a Rails 8 default)
gem "jbuilder"

# Required for User#authenticate / has_secure_password (Ch 6) —
# commented out by default in fresh Rails 8 apps, must be enabled
gem "bcrypt", "~> 3.1.7"

# Pagination (Ch 10 users index, Ch 13 microposts, Ch 14 followers)
gem "will_paginate", "~> 4.0"

# Fake data for db/seeds.rb
gem "faker", "~> 3.4"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
end

group :development do
  gem "web-console"
end

# NOTE: pg, kamal, thruster, solid_cache/queue/cable, brakeman, rubocop-rails-omakase,
# bundler-audit, capybara, selenium-webdriver were all in the Rails-8-generated
# Gemfile but are NOT needed to run this tutorial app locally in Docker with SQLite.
# They're safe to leave out while learning; add them back later if you deploy
# for real or want CI/security tooling.
