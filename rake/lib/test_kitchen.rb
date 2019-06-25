require 'kitchen/rake_tasks'

# Test Kitchen module
module TestKitchen
  def self.kitchen_config(environment)
    case environment
    when 'cloud'
      raise ArgumentError 'Cloud environment not supported'
      # kitchen_config_cloud
    when 'docker'
      loader = Kitchen::Loader::YAML.new(project_config: './.kitchen.docker.yml')
      Kitchen::Config.new(loader: loader)
    when 'vagrant'
      Kitchen::Config.new
    else
      raise ArgumentError, 'Unknown environment, try vagrant/docker/cloud', environment
    end
  end

  def self.kitchen_config_cloud
    %w[AWS_SSH_KEY_ID AWS_SSH_KEY AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY].each do |conf|
      unless ENV[conf]
        value = `source ~/.awssecret 2>/dev/null && echo $#{conf}`.chomp
        ENV[conf] = value unless value.empty?
      end
    end
    loader = Kitchen::Loader::YAML.new(project_config: './.kitchen.cloud.yml')
    Kitchen::Config.new(loader: loader)
  end

  def self.kitchen_instances(config, name)
    # choose which instance(-s) to run in test kitchen
    case name
    when 'all'
      config.instances
    else
      config.instances.get_all(/#{name}/)
    end
  end

  def self.test(environment, name, actions)
    Kitchen.logger = Kitchen.default_file_logger

    config = kitchen_config(environment)
    instances = kitchen_instances(config, name)
    raise ArgumentError, 'Unknown instance, check "kitchen list"' if instances.length.zero?
    # run kitchen actions for each instance
    instances.each do |instance|
      actions.each do |action|
        instance.send(action)
      end
    end
  end
end
