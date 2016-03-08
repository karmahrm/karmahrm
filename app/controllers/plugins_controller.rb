class PluginsController < ApplicationController
  before_action :authenticate_user!
  def index
    @plugins = ActsAsPluggable::Plugin.to_a
  end
end
