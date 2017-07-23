class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]
  # before_filter do
  #   @discogs = Discogs::Wrapper.new("REKKIDS", session[:access_token])
  # end


  def authenticate
    app_key = ENV["FBKQYVnAGfObiPrBFrhe"]
    app_secret = ENV["OdekVDfPyPPgarzrpUpDqXCFjShBWjdk"]
  @discogs     = Discogs::Wrapper.new("REKKIDS")
  request_data = @discogs.get_request_token(app_key, app_secret, "http://127.0.0.1:3000/callback")

  session[:request_token] = request_data[:request_token]

  redirect_to request_data[:authorize_url]
end

# And an action that Discogs will redirect back to.
def callback
  @discogs      = Discogs::Wrapper.new("REKKIDS")
  request_token = session[:request_token]
  verifier      = params[:oauth_verifier]
  access_token  = @discogs.authenticate(request_token, verifier)

  session[:request_token] = nil
  session[:access_token]  = access_token

  @discogs.access_token = access_token

  # You can now perform authenticated requests.
end












  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
    @records = Record.where(latitude: @record.latitude, longitude: @record.longitude)
    @hash = Gmaps4rails.build_markers(@records) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end

  end

  def new
    @record = Record.new
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
    params.require(:record).permit(:name, :artist, :price, :photo, :user_id, :description, :address)
  end

  def set_record
    @record = Record.find(params[:id])
  end

end
