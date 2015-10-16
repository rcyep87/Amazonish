class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  def edit
  end

  def create #starts order
    if current_user
      @order = Order.create(user_id: current_user.id)
      redirect_to root_path, notice: "Your order has started!"
    else
      redirect_to root_path, notice: "Please Create an Account or Login to start a new order."
    end
  end

  def update

    @order.paid = true
    @order.save
    redirect_to order_path(@order.id), notice: "Thank you for your purchase!"

  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:paid, :email_sent, :user_id)
    end
end
