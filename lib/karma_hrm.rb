require 'karma_hrm/plugin_extensions'
module KarmaHrm
  def self.search_kick_enabled?
    Rails.configuration.x.searchkick['enabled']
  end
end
