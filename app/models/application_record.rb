class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  @discogs = Discogs::Wrapper.new("La Rama", user_token: "tJTZwyDlsmmQCxOjBBhNygEucUsbKELlYfTzsZYp")
end
