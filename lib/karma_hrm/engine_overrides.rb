# module KarmaHrm
class ::Rails::Engine
  initializer :append_migrations do |app|
    unless app.root.to_s.match root.to_s
      config.paths['db/migrate'].expanded.each do |expanded_path|
        app.config.paths['db/migrate'] << expanded_path
      end
    end
  end
  config.autoload_paths += Dir["#{config.root}/lib/**/"]
  end
# end
