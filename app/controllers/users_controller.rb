class UsersController < ApplicationController

  def index
  end

  def create
    @user = User.new
    @user.save!
    redirect_to gamepage_path
  end

end
