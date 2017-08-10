class OrdersController < ApplicationController
  before_action :set_record, only: [:new, :show, :create]
  # before_action :set_user, only: [:new, :show]

    def new
      @order = Order.new
    end


   def create
    order = Order.create!(state:'pending', amount_cents: @record.price_cents, image: @record.photo, description: @record.description)
      redirect_to orders_path

  end


  def index
    @orders = Order.where(state: 'pending')
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
    @record =Record.find(params[:record_id])

  end

  # def set_user
  #   @user = Record.user(params[:user_id])
  # end

  def order_params
    params.require(:order).permit(:quantity, :amount_cents, :state, :image, :release_id, :record_id, :description)
  end


end
