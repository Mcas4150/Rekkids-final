class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update]

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
