require 'serverspec'

set :backend, :exec

describe 'plex-cloud-server::default' do
  it 'should contain hello world' do
    expect(file('/opt/helloworld.txt').content).to match('^hello world$')
  end
end
