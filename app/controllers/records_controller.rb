class RecordsController < ApplicationController
before_action :set_record, only: [:show]



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


  end


  private

  def record_params

    params.require(:record).permit(:name, :artist, :price_cents, :release_id, :catno, :year, :genre, :country, :youtubeid, :photo, :label)
    # params.require(:track).permit(:position, :title, :duration)

  end

  def set_record
    @record = Record.find(params[:id])


  end

end
