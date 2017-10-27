class UsersController < ApplicationController
  
  def index
  	@users = User.all
  end

  def update
  	@user = User.find(params[:id])
  	@user.update!(active: true)
  	redirect_to activation_path
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to activation_path
  end
end
