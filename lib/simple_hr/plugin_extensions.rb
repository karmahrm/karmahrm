module SimpleHr
  module PluginExtensions
    def menu
      @meta_data[:menu]
    end

    def meta_data
      @meta_data
    end

    def title
      id.to_s.titleize
    end
  end
  ::ActsAsPluggable::Plugin.include PluginExtensions
end
