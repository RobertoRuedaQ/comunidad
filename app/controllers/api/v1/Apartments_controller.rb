class Api::V1::ApartmentsController < ApplicationController

  def index
    @apartments = Apartment.all
  end
  
  def create
    @apartment = Apartment.new(apartment_params)
    if @apartment.save
      render json: apartment, status: 201, location: [:api, apartment]
    else
      render json: { errors: apartment.errors }, status: 422
    end
	end

private

	def apartment_params
	  params.require(:apartment).permit(:number, :block, :parking_lots, :bikes_parking, :storage, :coefficient)
	end
end