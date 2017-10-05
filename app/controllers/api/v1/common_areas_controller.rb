class Api::V1::CommonAreasController < ApplicationController

  def index
    @common_areas = CommonArea.all
  end

      def create
    @common_area = CommonArea.new(common_area_params)
    if @common_area.save
      render json: common_area, status: 201, location: [:api, common_area]
    else
      render json: { errors: common_area.errors }, status: 422
    end
	end

private

	def common_area_params
	  params.require(:common_area).permit(:place, :date, :start_hour, :end_hour, :user_id)
	end
  
end

