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

    @response = @discogs.get_user_collection(@user.username)
     @releases = @response.releases


  end


  def index
     @user = @discogs.get_identity

    @response = @discogs.get_user_collection(@user.username, page: 8, per_page: 30)
     @releases = @response.releases
    
  end


  def show
    @release_id = 5646969
  @release = @discogs.get_release(@release_id)
  end



  def marketplace
    @user = @discogs.get_identity
    @response = @discogs.get_user_inventory(@user.username, per_page: 100)
    @listings = @response.listings
  end


  def create
    @record = Record.new(record_params)
    @record.user = current_user
    if @record.save
      redirect_to record_path(@record)
    # else
    #   render :new
    end
  end

  def edit
    @record.save
  end

  def update
    if @record.update(record_params)
      redirect_to record_path(@record)
    else
      render :edit
    end
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to records_path
  end

  private

  def record_params

    params.require(:record).permit(:name, :artist, :price, :photo, :user_id, :record_id, :catno)

  end

  def set_record


   @record = Record.find_by(release_id: params[:id])
  end

end
