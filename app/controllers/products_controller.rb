class ProductsController < ApplicationController
 before_action :authenticate_user!
  def index
  	@products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(product_params)
  	if @product.save
      redirect_to root_path
    else
      redirect_to new_product_path, notice: @product.errors.each
    end
  end


  private
  def product_params
  	params.require(:product).permit(:name, :price, :units, :store_id, :recommended, :image)
  end
end
