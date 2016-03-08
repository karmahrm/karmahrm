class SessionsController < ApplicationController
  before_action :authenticate_user!
  def create
    auth = request.env['omniauth.auth']
  end

  def destroy
    # Logout the User here
  end
end
