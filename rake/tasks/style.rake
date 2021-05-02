# Style tests. Rubocop only for now.
namespace :style do
  begin
    require 'rubocop/rake_task'
    desc 'Run Ruby style checks'
    RuboCop::RakeTask.new(:ruby)
  rescue LoadError => err
    puts "Rubocop gem could not be loaded (#{err}), omitting task"
  end
end

desc 'Run all style checks'
task test: %w[style:ruby]
