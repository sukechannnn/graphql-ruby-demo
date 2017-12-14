source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'

gem 'coffee-rails'
gem 'graphql'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'ridgepole'
gem 'ridgepole-rails'
gem 'sass-rails'
gem 'uglifier'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rubocop', '~> 0.49.0', require: false
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development do
  gem 'annotate'
  gem 'seed-fu', '~> 2.3'
end

group :test do
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 3.5'
end
