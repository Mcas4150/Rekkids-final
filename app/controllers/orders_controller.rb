class OrdersController < ApplicationController
  before_action :set_record, only: [:new, :show, :create]
  # before_action :set_user, only: [:new, :show]

    def new
      @order = Order.new
    end


   def create
    @order = Order.new
    from = params[:order][:from]
    to = params[:order][:to]
    @order.from = Date.strptime(from, "%m/%d/%Y")
    @order.to = Date.strptime(to, "%m/%d/%Y")
    @order.record = @record
    @order.user = current_user

    if @order.save
      redirect_to orders_path
    else
      render "records/show"
    end
  end


  def index
    @orders = Order.all
  end

  def show
  end

  def destroy
     @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path(@order)
  end


    private
  def set_record
    @record = Record.find(params[:record_id])
  end

  # def set_user
  #   @user = Record.user(params[:user_id])
  # end

  def order_params
    params.require(:order).permit(:to, :from)
  end


end
