class PagesController < ApplicationController

  def index
  end

  def gamepage
    @users = User.count
  end

end
