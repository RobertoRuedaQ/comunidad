class Api::V1::OrdersController < ApplicationController

  def index
    @orders = Order.all
  end
  
  def create
    @order = Order.new(advertisement_params)
    if @order.save
      render json: order, status: 201, location: [:api, order]
    else
      render json: { errors: order.errors }, status: 422
    end
	end

private

	def order_params
	  params.require(:order).permit(:total, :order_status_id)
	end
end