# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks
Rake.application.lookup('db:seed').clear
desc 'Alias for db:seed_fu'
task 'db:seed' => 'db:seed_fu'
