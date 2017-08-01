class OrdersController < ApplicationController
  before_action :set_record, only: [:new, :show, :create]
  # before_action :set_user, only: [:new, :show]

    def new
      @order = Order.new
    end


   def create
    @order = Order.new
    order = Order.create!(state:'pending')
    @order.record = @record
    @order.user = current_user

    if @order.save
      redirect_to new_order_payment_path(order)
    else
      render "records/show"
    end
  end


  def index
    @orders = Order.all
  end

  def show
     @order = Order.where(state: 'paid').find(params[:id])
  end

  def destroy
     @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path(@order)
  end


    private
  def set_record
    @release = @discogs.get_release(params[:id])

  end

  # def set_user
  #   @user = Record.user(params[:user_id])
  # end

  def order_params
    params.require(:order).permit(:quantity, :amount, :state, :photo, :release_id)
  end


end
