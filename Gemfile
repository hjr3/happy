source 'https://rubygems.org'

gem 'rails', '3.2.9'

group :production, :staging do
  gem "pg"
  gem 'thin'
end

group :development, :test do
  gem 'sqlite3'
end

gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'libv8'
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'bootstrap-sass', '~> 2.2.2.0'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'
