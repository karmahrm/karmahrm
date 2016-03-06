class PluginsController < ApplicationController
  def index
    @plugins = ActsAsPluggable::Plugin.to_a
  end
end
