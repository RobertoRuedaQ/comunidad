class Api::V1::ChildrenController < ApplicationController

  def index
    @children = Child.all
  end
  
  def create
    @child = Child.new(child_params)
    if @child.save
      render json: child, status: 201, location: [:api, child]
    else
      render json: { errors: child.errors }, status: 422
    end
	end

private

	def child_params
	  params.require(:child).permit(:name, :last_name, :day_of_birth, :gender, :apartment_id)
	end
end