class OrdersController < ApplicationController
	def index
    @disable_nav = true
    @orders = current_user.orders.all
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

private

	def order_params
	  params.require(:order).permit(:total, :order_status_id)
	end
end
