class RecordsController < ApplicationController
before_action :set_record, only: [:show, :edit, :update]



  def inventory
    @user = @discogs.get_identity

    @response = @discogs.get_user_collection(@user.username, page: rand(4), per_page: 100)
     @releases = @response.releases
  end



  def marketplace
   @records = Record.all
  end

  def index
     @user = @discogs.get_identity

    @response = @discogs.get_user_collection(@user.username, page: rand(12), per_page: 30)
     @releases = @response.releases

  end

  def show
  @release = @discogs.get_release(params[:id])

  end


  private

  def record_params

    params.require(:record).permit(:name, :artist, :price_cents, :release_id, :catno, :year, :genre, :country, :youtubeid, :photo, :label)


  end

  def set_record
    @record = Record.find(params[:id])


  end

end
