class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # def discogs
  #   user = User.find_for_discogs_oauth(request.env['omniauth.auth'])

  #   if user.persisted?
  #     sign_in_and_redirect user, event: :authentication

  #   else
  #     session['devise.discogs_data'] = request.env['omniauth.auth']
  #     redirect_to new_user_registration_url
  #   end
  # end
end
