namespace :integration do
  require_relative '../lib/test_kitchen'

  desc 'Run full test cycle with Kitchen'
  task :full_test, %i[environment instance] do |_t, args|
    args.with_defaults(environment: 'docker', instance: 'all')
    TestKitchen.test(args[:environment], args[:instance], %w[test])
  end

  desc 'Run Converge/Verify cycle with Kitchen'
  task :test, %i[environment instance] do |_t, args|
    args.with_defaults(environment: 'docker', instance: 'all')
    TestKitchen.test(args[:environment], args[:instance], %w[converge verify])
  end
rescue LoadError => e
  puts "Kitchen gem could not be loaded (#{e}), omitting task"
end
