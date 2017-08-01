class RecordsController < ApplicationController
  before_filter do
    @discogs = Discogs::Wrapper.new("La Rama", user_token: "emwVPSaiMzcjhTyDAjMrRGcfTFNZLvAPSxwozkDh")
  end
before_action :set_record, only: [:show, :edit, :update]

  def whoami
    @user = @discogs.get_identity
  end

  def inventory
    @user = @discogs.get_identity

    @response = @discogs.get_user_collection(@user.username, page: rand(4), per_page: 100)
     @releases = @response.releases
  end



  def marketplace
    @user = @discogs.get_identity
    @response = @discogs.get_user_inventory(@user.username, per_page: 100)
    @listings = @response.listings


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

    params.require(:record).permit(:name, :artist, :price, :release_id, :catno)


  end

  def set_record



  end

end
