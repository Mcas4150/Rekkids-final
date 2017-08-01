class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
 before_filter do
    @discogs = Discogs::Wrapper.new("La Rama", user_token: "emwVPSaiMzcjhTyDAjMrRGcfTFNZLvAPSxwozkDh")
  end

end
