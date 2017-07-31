class Record < ApplicationRecord
  has_many :order
  monetize :price_cents
  @discogs = Discogs::Wrapper.new("La Rama", user_token: "emwVPSaiMzcjhTyDAjMrRGcfTFNZLvAPSxwozkDh")
  # @user = @discogs.get_identity
  #

  # def listings
  #
  # end
  def self.release_id
    @inventory = @discogs.get_user_inventory(@user.username, per_page: 100)
    @listings = @inventory.listings
    @listings.each do |listing|
    @release_id= listing.release['id']
#     @price = humanized_money_with_symbol(listing.original_price['value'])
    end
  end





 #  @listing = @discogs.get_listing(@listing_id)
 # @release = @discogs.get_release(@release_id)
 #  @artist = @release.basic_information["artists"][0]["name"]
 # @title = @release.basic_information["title"]
 # @label = @release["labels"][0]['name']
 # @genre = @release["styles"].pop
 # @country = @release["country"]



  # :name = @title
  # :price = @price
  # :genre = @genre
  # :label = label

 #    @tracklist = @release["tracklist"].each do |track|
 #    @position =  track['position']
 #    @tracktitle = track["title"]
 #    @duration = track["duration"]
 # end

  # def self.all

  # end

  # def self.find(id)

  # end

  # def initialize(id)
  #   @data =
  # end

  # def image
  #   @data["im"]
  # end

  # def video_uris
  #   output = []
  #   @data["videos"].each do
  #     output <<
  #   end
  # end


end

