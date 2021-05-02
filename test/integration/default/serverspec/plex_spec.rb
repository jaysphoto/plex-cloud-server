require 'serverspec'

set :backend, :exec

describe service('plexmediaserver.service') do
  it { should be_enabled }
  it { should be_running }
end
