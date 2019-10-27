class UsersController < ApplicationController

  def index
  end

  def create
    @user = User.new
    @user.state = %w[dead alive].sample
    @user.save!
    redirect_to root_path
  end


  def clear
    User.destroy_all
    redirect_to root_path
  end


end
