class Api::V1::ApiController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  private

  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

  def doorkeeper_unauthorized_render_options(error: nil)
    { json: { error: 'Not authorized' } }
  end
end
