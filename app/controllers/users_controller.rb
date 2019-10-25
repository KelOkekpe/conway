class UsersController < ApplicationController

  #this throws all users into an array called @user_array which is displayed to the front end
  def index
    @users = User.all.state.to_a
  end

  def create
    @user = User.new
    @user.state = %w[dead alive].sample
    @user.save!
    redirect_to root_path
  end



  def natural_law
    new_user_array = []
    users = User.all

    users.each do |user|
      if user.state == 'alive'
        new_user_array << user
      else
        user.destroy
      end
    end
    new_user_array
    redirect_to root_path
  end



  def clear
    User.destroy_all
    redirect_to root_path
  end


end
