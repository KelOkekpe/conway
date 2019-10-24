class User < ApplicationRecord

  def initialize
    @state = %w[dead alive].rand
  end
  
end
