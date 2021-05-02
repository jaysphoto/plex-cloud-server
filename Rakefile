Dir.glob('rake/tasks/**/*.rake').each { |rake_task| load rake_task }

require 'rake/clean'

CLEAN.include('spec/fixtures/')

require 'puppetlabs_spec_helper/rake_tasks'

# Default
task test: %w[style:ruby spec]
