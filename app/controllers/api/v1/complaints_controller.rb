class Api::V1::ComplaintsController < ApplicationController

  def index
    @complaints = Complaint.all
  end

    def create
    @complaint = Complaint.new(complaint_params)
    if @complaint.save
      render json: complaint, status: 201, location: [:api, complaint]
    else
      render json: { errors: complaint.errors }, status: 422
    end
	end

private

	def complaint_params
	  params.require(:complaint).permit(:category, :description, :answer, :solved,:topic, :imagen, :apartment_id)
	end
  
end