class RecordsController < ApplicationController




  def inventory
    @user = @discogs.get_identity

    @response = @discogs.get_user_collection(@user.username, page: rand(4), per_page: 20)
     @releases = @response.releases
  end

  def marketplace
   @records = Record.order(:name).page params[:page]
  end

  def index
  @records = Record.page(1)
  end

  def show
   @record = Record.find(params[:id]) rescue nil
   @records = Record.page(1)

  end

  def search
     @record = Record.find(params[:release_id]) rescue nil
     @records = Record.page(1)
  end






  def self.cart
    @record.update(cart: true)
    redirect_to crate_records_path
  end

  def crate
    @carted = Record.where(cart: true)
  end

  private

  def record_params

    params.require(:record).permit(:name, :artist, :price_cents, :release_id, :catno, :year, :genre, :country, :youtubeid, :photo, :cart, :label, :tracklist, :track)
    # params.require(:track).permit(:position, :title, :duration)

  end



end
