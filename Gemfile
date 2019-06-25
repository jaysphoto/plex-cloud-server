source 'https://rubygems.org'

ruby '~>2.0'

gem 'berkshelf'
gem 'librarian-puppet'
gem 'puppet'
gem 'rake'

group :test do
  gem 'puppet-lint'
  gem 'rubocop', '~>0.49.0'
end

group :integration do
  gem 'kitchen-docker'
  gem 'kitchen-puppet'
  gem 'kitchen-vagrant'
  gem 'rspec-puppet'
  gem 'serverspec'
  gem 'test-kitchen'
end
