class AnswersController < ApplicationController
  before_action :set_complaint, only: [:show, :edit, :update, :destroy]

  def index
    @complaints = Complaint.all
  end

  def edit
  end

  def show
  end

  def update
    @complaint = Complaint.find(params[:id])
    @complaint.update!(answer_params)
    redirect_to answers_path
  end

  def destroy
    @complaint = Complaint.find(params[:id])
    @complaint.destroy
    redirect_to answers_path
  end

  private

    def set_complaint
      @complaint = Complaint.find(params[:id])
    end
  def answer_params
      params.require(:complaint).permit(:category, :description, :answer, :solved,:topic, :imagen, :apartment_id)
    end
end