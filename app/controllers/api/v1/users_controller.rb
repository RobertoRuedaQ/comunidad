class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: user, status: 201, location: [:api, user]
    else
      render json: { errors: user.errors }, status: 422
    end
	end

private

	def user_params
	  params.require(:user).permit(:email, :name, :last_name, :gender, :cellphone, :day_of_birth, :apartment_id, :owner, :hobbies)
	end
  
end