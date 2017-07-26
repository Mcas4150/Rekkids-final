# class TestsController < ApplicationController
#   before_filter do
#     @discogs = Discogs::Wrapper.new("La Rama", session[:access_token])
#   end



#   def authenticate
#      app_key = ENV["FBKQYVnAGfObiPrBFrhe"]
#     app_secret = ENV["OdekVDfPyPPgarzrpUpDqXCFjShBWjdk"]
#   @discogs     = Discogs::Wrapper.new("La Rama")
#   request_data = @discogs.get_request_token(app_key, app_secret, "http://localhost:3000/tests/callback")

#   session[:request_token] = request_data[:request_token]

#   redirect_to request_data[:authorize_url]
#   end

#   def callback
#     @discogs      = Discogs::Wrapper.new("La Rama")
#   request_token = session[:request_token]
#   verifier      = params[:oauth_verifier]
#   access_token  = @discogs.authenticate(request_token, verifier)

#   session[:request_token] = nil
#   session[:access_token]  = access_token

#   @discogs.access_token = access_token
#   end

#   def whoami
#     @user = @discogs.get_identity
#   end
# end
