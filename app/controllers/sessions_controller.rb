class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
  end

  def destroy
    # Logout the User here
  end
end
