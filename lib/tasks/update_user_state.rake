namespace :state do
  desc "reverse current user state"
    task :reverse => :environment do
        User.where("state = ?", 'alive').update_all(state:'dead')
        puts "update successful"
      end
end
