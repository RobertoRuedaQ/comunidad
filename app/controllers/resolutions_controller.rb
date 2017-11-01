class ResolutionsController < ApplicationController
  def index
    @common_areas = CommonArea.all
  end

  def update
  	@common_area = CommonArea.find(params[:id])
  	@common_area.update!(aproved: true)
  	redirect_to resolutions_path
  end

  def destroy
    @common_area = CommonArea.find(params[:id])
    @common_area.destroy
    redirect_to resolutions_path
  end
end