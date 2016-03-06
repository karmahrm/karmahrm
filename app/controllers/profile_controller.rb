class ProfileController < ApplicationController
  before_action :authenticate_user!

  def account
  end

  def show
  end

  def unlink
    provider = params[:provider]
    identity = current_user.identities.find_by_provider(:twitter)
    identity.destroy if identity.present?
    redirect_to :back
  end

  def notifications
  end

  def applications
  end

  def preferences
  end

  def audit_log
  end
end
