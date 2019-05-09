source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.5'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.3'

gem 'omniauth', '~> 1.9'
gem 'devise_token_auth', '~> 1.1'
gem 'rack-cors'
gem 'rack-attack'

gem 'fast_jsonapi', '~> 1.5'
gem 'kaminari', '~> 1.1', '>= 1.1.1'

gem 'ancestry', '~> 3.0', '>= 3.0.6'

group :development, :test do
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
  gem 'factory_bot_rails', '~> 5.0', '>= 5.0.2'
  gem 'ffaker'
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'httparty', '~> 0.17.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
