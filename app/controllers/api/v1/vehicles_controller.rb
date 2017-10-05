class Api::V1::VehiclesController < ApplicationController

  def index
    @vehicles = Vehicle.all
  end

    def create
	    @vehicle = Vehicle.new(vehicle_params)
	    if @vehicle.save
	      render json: vehicle, status: 201, location: [:api, vehicle]
	    else
	      render json: { errors: vehicle.errors }, status: 422
	    end
  	end

  private

    def vehicle_params
      params.require(:vehicle).permit(:type, :plate, :brand, :apartment_id)
    end
  
end