class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update]

  def index
    @records = Record.all
  end

  def show

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
  end

  def update
    if @record.update(record_params)
      redirect_to record_path(@record)
    else
      render :edit
    end
  end

  private

  def record_params
    params.require(:record).permit(:name, :artist, :price, :photo, :user_id)
  end

  def set_record
    @record = Record.find(params[:id])
  end

end
