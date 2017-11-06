class ApplicationController < ActionController::Base
  respond_to :html, :js
  protect_from_forgery with: :exception
 before_filter do
    @discogs = Discogs::Wrapper.new("La Rama", user_token: "tJTZwyDlsmmQCxOjBBhNygEucUsbKELlYfTzsZYp")
  end

end
