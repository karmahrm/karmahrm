require 'simple_hr/plugin_extensions'
module SimpleHr
  def self.search_kick_enabled?
    Rails.configuration.x.searchkick['enabled']
  end
end
