source 'https://rubygems.org'

ruby '~>2.0'

gem 'berkshelf'
gem 'librarian-puppet'
gem 'puppet'
gem 'rake'

group :test do
  gem 'puppet-lint'
  gem 'puppet-syntax'
  gem 'puppetlabs_spec_helper'
  gem 'rspec-puppet'
  gem 'rspec-puppet-utils'
  gem 'rubocop', '~>0.49.0'
end

group :integration do
  gem 'kitchen-docker'
  gem 'kitchen-puppet'
  gem 'kitchen-vagrant'
  gem 'kitchen-verifier-serverspec'
  gem 'test-kitchen'
end
