class PagesController < ApplicationController

  def home
  	@newsletters = Newsletter.order("created_at DESC")
  end

  def show
		render template:"pages/#{params[:page]}"
  end

  def administrate_user
  	@users = User.all
  end
end
