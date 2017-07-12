class OrdersController < ApplicationController
  before_action :set_record, only: [:new, :show]
  # before_action :set_user, only: [:new, :show]

    def new
      @order = Order.new
    end


   def create

    @order = Order.new(order_params)
    @order.user = current_user

    if @order.save
      redirect_to records_path
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

  # def set_user
  #   @user = Record.user(params[:user_id])
  # end

  def order_params
    params.require(:order).permit(:record_id)
  end


end
