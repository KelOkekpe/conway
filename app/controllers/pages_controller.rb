class PagesController < ApplicationController

  #this creates the context for all users
  def index
    @user_array = User.all.pluck(:state)
  end

end
