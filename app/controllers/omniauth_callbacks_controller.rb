class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def self.provides_callback_for(provider)
    class_eval %{
      def #{provider}
        @user = User.find_for_oauth(env["omniauth.auth"], current_user)

        if @user.persisted?
          sign_in_and_redirect @user, event: :authentication
          set_flash_message(:notice, :success, kind: "#{provider}".capitalize) if is_navigational_format?
        else
          flash[:notice]="You didn't connected this account to your profile yet"
          redirect_to new_user_session_path
        end
      end
    }
  end

  [:twitter, :facebook, :linked_in,:linkedin].each do |provider|
    provides_callback_for provider
  end
end
