class Api::V1::WerehousesController < ApplicationController

  def index
    @werehouses = Werehouse.all
  end

  def create
    @werehouse = Werehouse.new(werehouse_params)
    if @werehouse.save
      render json: werehouse, status: 201, location: [:api, werehouse]
    else
      render json: { errors: werehouse.errors }, status: 422
    end
	end

private

	def werehouse_params
	  params.require(:werehouse).permit(:name, :last_name, :document_id, :ARL)
	end
  
end