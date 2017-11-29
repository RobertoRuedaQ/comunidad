class OrdersController < ApplicationController
  respond_to :html, :json

  before_action :authenticate_bussiness!
	def index
    @disable_nav = true
     respond_with @orders = current_bussiness.orders.all
  end
  
  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to cart_path
    else
      redirect_to product_path
    end
	end

  def update
    @order = Order.find(params[:id])
    @order.update!(order_status_id: 2)
    redirect_to orders_path
  end

  def report
     @disable_nav = true
    @sell = current_bussiness.orders.where("order_status_id = 2")
    @total_sell = current_bussiness.orders.where('order_status_id = 2').pluck(:total).sum
  end
  

private

	def order_params
	  params.require(:order).permit(:total, :order_status_id, :user_id, :bussiness_id)
	end
end
