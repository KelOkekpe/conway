class UsersController < ApplicationController

  def index
  end

  def create
    @user = User.new
    @user.state = %w[dead alive].sample
    @user.save!
    redirect_to user_table_path
  end

  def modify
    users = User.all
    users.each_with_index do |user, i|

      while i == 0
        live_count = 0
        dead_count = 0
        if users[i+1].state == 'alive'
          live_count += 1
        else users[i+1].state == 'dead'
          dead_count += 1
        end
        if users[i+5].state == 'alive'
          live_count += 1
        else users[i+5] == 'dead'
          dead_count += 1
        end
        if users[i+6].state == 'alive'
          live_count += 1
        else users[i+6] == 'dead'
          dead_count += 1
        end
        #throw this in a proc
        if user.state == 'dead' && live_count == 3
          user.update(state:'birth')
        elsif user.state == 'alive' && live_count <= 1
          user.update(state:'death by isolation')
        elsif user.state == 'alive' && live_count >= 4
          user.update(state:'death by overcrowding')
        else user.state == 'alive' && live_count == 2 || live_count == 3
          user.update(state:'survival')
        end
      end #end while loop


      while i == 1 || i == 2 || i == 3
        live_count = 0
        dead_count = 0
        if users[i-1].state == 'alive'
          live_count += 1
        else users[i-1].state == 'dead'
          dead_count += 1
        end
        if users[i+1].state == 'alive'
          live_count += 1
        else users[i+1] == 'dead'
          dead_count += 1
        end
        if users[i+4].state == 'alive'
          live_count += 1
        else users[i+4] == 'dead'
          dead_count += 1
        end
        if users[i+5].state == 'alive'
          live_count += 1
        else users[i+5] == 'dead'
          dead_count += 1
        end
        if users[i+6].state == 'alive'
          live_count += 1
        else users[i+6] == 'dead'
          dead_count += 1
        end
        #throw this in a proc
        if user.state == 'dead' && live_count == 3
          user.update(state:'birth')
        elsif user.state == 'alive' && live_count <= 1
          user.update(state:'death by isolation')
        elsif user.state == 'alive' && live_count >= 4
          user.update(state:'death by overcrowding')
        else user.state == 'alive' && live_count == 2 || live_count == 3
          user.update(state:'survival')
        end
      end

      while i == 4
        live_count = 0
        dead_count = 0
        if users[i-1].state == 'alive'
          live_count += 1
        else users[i-1].state == 'dead'
          dead_count += 1
        end
        if users[i+4].state == 'alive'
          live_count += 1
        else users[i+4] == 'dead'
          dead_count += 1
        end
        if users[i+5].state == 'alive'
          live_count += 1
        else users[i+5] == 'dead'
          dead_count += 1
        end
        #throw this in a proc
        if user.state == 'dead' && live_count == 3
          user.update(state:'birth')
        elsif user.state == 'alive' && live_count <= 1
          user.update(state:'death by isolation')
        elsif user.state == 'alive' && live_count >= 4
          user.update(state:'death by overcrowding')
        else user.state == 'alive' && live_count == 2 || live_count == 3
          user.update(state:'survival')
        end
      end


      while i == 5 || i == 10
        live_count = 0
        dead_count = 0
        if users[i-5].state == 'alive'
          live_count += 1
        else users[i-5].state == 'dead'
          dead_count += 1
        end
        if users[i-4].state == 'alive'
          live_count += 1
        else users[i-4] == 'dead'
          dead_count += 1
        end
        if users[i+1].state == 'alive'
          live_count += 1
        else users[i+1] == 'dead'
          dead_count += 1
        end
        if users[i+5].state == 'alive'
          live_count += 1
        else users[i+5] == 'dead'
          dead_count += 1
        end
        if users[i+6].state == 'alive'
          live_count += 1
        else users[i+6] == 'dead'
          dead_count += 1
        end
        #throw this in a proc
        if user.state == 'dead' && live_count == 3
          user.update(state:'birth')
        elsif user.state == 'alive' && live_count <= 1
          user.update(state:'death by isolation')
        elsif user.state == 'alive' && live_count >= 4
          user.update(state:'death by overcrowding')
        else user.state == 'alive' && live_count == 2 || live_count == 3
          user.update(state:'survival')
        end
      end

      while i == 6 || i == 7 || i == 8 || i == 11 || i == 12 || i == 13
        live_count = 0
        dead_count = 0
        if users[i-1].state == 'alive'
          live_count += 1
        else users[i-1].state == 'dead'
          dead_count += 1
        end
        if users[i-4].state == 'alive'
          live_count += 1
        else users[i-4] == 'dead'
          dead_count += 1
        end
        if users[i-5].state == 'alive'
          live_count += 1
        else users[i-5] == 'dead'
          dead_count += 1
        end
        if users[i-6].state == 'alive'
          live_count += 1
        else users[i-6] == 'dead'
          dead_count += 1
        end
        if users[i+1].state == 'alive'
          live_count += 1
        else users[i+1] == 'dead'
          dead_count += 1
        end
        if users[i+4].state == 'alive'
          live_count += 1
        else users[i+4] == 'dead'
          dead_count += 1
        end
        if users[i+5].state == 'alive'
          live_count += 1
        else users[i+5] == 'dead'
          dead_count += 1
        end
        if users[i+6].state == 'alive'
          live_count += 1
        else users[i+6] == 'dead'
          dead_count += 1
        end
        #throw this in a proc
        if user.state == 'dead' && live_count == 3
          user.update(state:'birth')
        elsif user.state == 'alive' && live_count <= 1
          user.update(state:'death by isolation')
        elsif user.state == 'alive' && live_count >= 4
          user.update(state:'death by overcrowding')
        else user.state == 'alive' && live_count == 2 || live_count == 3
          user.update(state:'survival')
        end
      end

      while i == 9 || i == 14
        live_count = 0
        dead_count = 0
        if users[i-1].state == 'alive'
          live_count += 1
        else users[i-1].state == 'dead'
          dead_count += 1
        end
        if users[i-5].state == 'alive'
          live_count += 1
        else users[i-5] == 'dead'
          dead_count += 1
        end
        if users[i-6].state == 'alive'
          live_count += 1
        else users[i-6] == 'dead'
          dead_count += 1
        end
        if users[i+4].state == 'alive'
          live_count += 1
        else users[i+4] == 'dead'
          dead_count += 1
        end
        if users[i+5].state == 'alive'
          live_count += 1
        else users[i+5] == 'dead'
          dead_count += 1
        end
        #throw this in a proc
        if user.state == 'dead' && live_count == 3
          user.update(state:'birth')
        elsif user.state == 'alive' && live_count <= 1
          user.update(state:'death by isolation')
        elsif user.state == 'alive' && live_count >= 4
          user.update(state:'death by overcrowding')
        else user.state == 'alive' && live_count == 2 || live_count == 3
          user.update(state:'survival')
        end
      end

      while i == 15
        live_count = 0
        dead_count = 0
        if users[i-4].state == 'alive'
          live_count += 1
        else users[i-4].state == 'dead'
          dead_count += 1
        end
        if users[i-5].state == 'alive'
          live_count += 1
        else users[i-5] == 'dead'
          dead_count += 1
        end
        if users[i+1].state == 'alive'
          live_count += 1
        else users[i+1] == 'dead'
          dead_count += 1
        end
        #throw this in a proc
        if user.state == 'dead' && live_count == 3
          user.update(state:'birth')
        elsif user.state == 'alive' && live_count <= 1
          user.update(state:'death by isolation')
        elsif user.state == 'alive' && live_count >= 4
          user.update(state:'death by overcrowding')
        else user.state == 'alive' && live_count == 2 || live_count == 3
          user.update(state:'survival')
        end
      end

      while i == 16 || i == 17 || i == 18
        live_count = 0
        dead_count = 0
        if users[i-1].state == 'alive'
          live_count += 1
        else users[i-1].state == 'dead'
          dead_count += 1
        end
        if users[i-4].state == 'alive'
          live_count += 1
        else users[i-4] == 'dead'
          dead_count += 1
        end
        if users[i-5].state == 'alive'
          live_count += 1
        else users[i-5] == 'dead'
          dead_count += 1
        end
        if users[i-6].state == 'alive'
          live_count += 1
        else users[i-6] == 'dead'
          dead_count += 1
        end
        if users[i+1].state == 'alive'
          live_count += 1
        else users[i+1] == 'dead'
          dead_count += 1
        end
        #throw this in a proc
        if user.state == 'dead' && live_count == 3
          user.update(state:'birth')
        elsif user.state == 'alive' && live_count <= 1
          user.update(state:'death by isolation')
        elsif user.state == 'alive' && live_count >= 4
          user.update(state:'death by overcrowding')
        else user.state == 'alive' && live_count == 2 || live_count == 3
          user.update(state:'survival')
        end
      end

      while i == 19
        live_count = 0
        dead_count = 0
        if users[i-1].state == 'alive'
          live_count += 1
        else users[i-1].state == 'dead'
          dead_count += 1
        end
        if users[i-5].state == 'alive'
          live_count += 1
        else users[i-5] == 'dead'
          dead_count += 1
        end
        if users[i-6].state == 'alive'
          live_count += 1
        else users[i-6] == 'dead'
          dead_count += 1
        end
        #throw this in a proc
        if user.state == 'dead' && live_count == 3
          user.update(state:'birth')
        elsif user.state == 'alive' && live_count <= 1
          user.update(state:'death by isolation')
        elsif user.state == 'alive' && live_count >= 4
          user.update(state:'death by overcrowding')
        else user.state == 'alive' && live_count == 2 || live_count == 3
          user.update(state:'survival')
        end
      end
      break
    end
    redirect_to root_path
  end

  def clear
    User.destroy_all
    redirect_to root_path
  end


end
