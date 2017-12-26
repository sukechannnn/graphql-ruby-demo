# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'
require 'graphql/rake_task'

Rails.application.load_tasks

GraphQL::RakeTask.new(schema_name: 'GraphqlRubyDemoSchema')

desc 'Dump schema.graphql under spec/ dir'
namespace :spec do
  GraphQL::RakeTask.new(schema_name: 'GraphqlRubyDemoSchema', directory: Rails.root.join('spec', 'graphql'))
end

Rake.application.lookup('db:seed').clear
desc 'Alias for db:seed_fu'
task 'db:seed' => 'db:seed_fu'
