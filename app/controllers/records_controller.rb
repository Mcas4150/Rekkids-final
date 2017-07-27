class RecordsController < ApplicationController
  before_filter do
    @discogs = Discogs::Wrapper.new("La Rama", user_token: "zgpweUEfSayvzOBigpVrOJrAHLOiOGJRywCuGyIX")
  end
before_action :set_record, only: [:show, :edit, :update]


#   def authenticate
#     app_key = ENV["DISCOGS_API_KEY"]
#     app_secret = ENV["DISCOGS_API_SECRET"]
#   @discogs     = Discogs::Wrapper.new("La Rama")
#   request_data = @discogs.get_request_token(app_key, app_secret, "localhost:3000/records/callback")

#   session[:request_token] = request_data[:request_token]

#   redirect_to request_data[:authorize_url]
#   raise
# end

# # And an action that Discogs will redirect back to.
# def callback
#   @discogs      = Discogs::Wrapper.new("La Rama")
#   request_token = session[:request_token]
#   verifier      = params[:oauth_verifier]
#   access_token  = @discogs.authenticate(request_token, verifier)

#   session[:request_token] = nil
#   session[:access_token]  = access_token

#   @discogs.access_token = access_token
#    redirect_to :action => "records/index"
#   # You can now perform authenticated requests.
# end







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
    release_id = id
    @release = @discogs.get_release(release_id)


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
