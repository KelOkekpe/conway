class PagesController < ApplicationController

  #this creates the context for all users
  def index
    @user_array = User.all.pluck(:state, :id)
  end

  def test_page
  end

  def user_table
    @users = User.all.pluck(:id,:state)
  end

end
