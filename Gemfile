source 'https://rubygems.org'

gem 'rails', '4.1.6'
gem 'mysql2'

# Assets and styles
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'haml'

gem 'simple_form'

# Emails
gem 'premailer-rails'
gem "letter_opener", group: :development
gem "mail_view", "~> 2.0.4", group: :development

gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
group :development do
  gem 'capistrano'
  gem 'capistrano-unicorn', :require => false
end

group :development, :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem "rspec-rails"
  gem 'factory_girl_rails'
  gem 'pry'
  gem 'pry-nav'
end

# Spree
gem 'braintree'
gem 'spree', github: 'spree/spree', branch: '2-3-stable'
gem 'spree_gateway', git: 'https://github.com/spree/spree_gateway.git', branch: '2-3-stable'
gem 'spree_auth_devise', git: 'https://github.com/spree/spree_auth_devise.git', branch: '2-3-stable'
gem 'spree_bootstrap_frontend', github: '200Creative/spree_bootstrap_frontend', branch: '2-3-stable'




