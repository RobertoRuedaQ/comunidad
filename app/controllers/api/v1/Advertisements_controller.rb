class Api::V1::AdvertisementsController < ApplicationController

  def index
    @advertisements = Advertisement.all
  end
  
  def create
    @advertisement = Advertisement.new(advertisement_params)
    if @advertisement.save
      render json: advertisement, status: 201, location: [:api, advertisement]
    else
      render json: { errors: advertisement.errors }, status: 422
    end
	end

private

	def advertisement_params
	  params.require(:advertisement).permit(:tittle, :description, :amount, :imagen, :user_id)
	end
end