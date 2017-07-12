class OrdersController < ApplicationController
  before_action :set_record, only: [:new, :show]

    def new
      @order = Order.new
    end


   def create
    @order = Order.new(order_params)
    @order.record = @record
    if @order.save
      redirect_to record_path(@record)
    else
      render "records/show"
    end
  end


  def index
    @orders = Order.all
  end

  def show
  end

  def delete
     @order = Order.find(params[:id])
    @order.destroy
    redirect_to Record_path(@record)
  end


    private
  def set_record
    @record = Record.find(params[:record_id])
  end



  def order_params
    params.require(:order).permit(:user_id, :record_id)
  end


end
