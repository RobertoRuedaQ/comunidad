class Api::V1::PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      render json: pet, status: 201, location: [:api, pet]
    else
      render json: { errors: pet.errors }, status: 422
    end
	end

private

	def pet_params
	  params.require(:pet).permit(:breed, :name, :apartment_id)
	end
  
end