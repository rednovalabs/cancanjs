module CanCanJs
  def self.gem_path
    Pathname(File.realpath(__FILE__)).join('../..')
  end

  def self.gem_spec
    Gem::Specification::load(
      gem_path.join("can-can-js.gemspec").to_s
    )
  end

  def self.load_paths
    gem_path.join('app/assets').each_child.to_a
  end

  if defined?(Rails)
    class Engine < ::Rails::Engine
      # Rails -> use app/assets directory.
    end
  end
end
