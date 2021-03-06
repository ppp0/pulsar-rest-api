namespace :dummy do

  task :my_sleep do
    sleep 10
  end

  task :my_sleep_unkillable do
    trap('SIGTERM') do
      puts 'Received SIGTERM, ignoring...'
    end

    sleep 10
  end

end

namespace :deploy do
  task :default do
    sleep 10
  end

  task :pending do
    sleep 1
  end
end
