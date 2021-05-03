require 'kitchen/rake_tasks'

# Test Kitchen module
module TestKitchen
  def self.kitchen_config(environment)
    case environment
    when 'docker'
      loader = Kitchen::Loader::YAML.new(local_config: './kitchen.docker.yml', project_config: './kitchen.yml')
    when 'vagrant'
      loader = Kitchen::Loader::YAML.new(project_config: './kitchen.yml')
    else
      raise ArgumentError, 'Unknown environment, try vagrant/docker/cloud', environment
    end
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
