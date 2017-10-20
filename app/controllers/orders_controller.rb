class OrdersController < ApplicationController
	def index
    @orders = Order.all
  end
  
  def create
    @order = Order.new(advertisement_params)
    if @order.save
      redirect_to cart_path
    else
      redirect_to product_path
    end
	end

private

	def order_params
	  params.require(:order).permit(:total, :order_status_id)
	end
end
