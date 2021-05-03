# Style tests. Rubocop only for now.
namespace :style do
  require 'rubocop/rake_task'
  desc 'Run Ruby style checks'
  RuboCop::RakeTask.new(:ruby)
rescue LoadError => e
  puts "Rubocop gem could not be loaded (#{e}), omitting task"
end
