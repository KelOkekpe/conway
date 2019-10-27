class NaturalLaw
  def initialize(@users)
    @users = User.all
  end

  def natural_law
    count = 0
    new_user_array = []
    users = User.all

    users.each_with_index do |user, i|
      if (users[i-1] && users[i+1])
        new_user_array << user
      else
        user.destroy
      end
        count += 1
    end
    redirect_to root_path
    new_user_array
  end




end
