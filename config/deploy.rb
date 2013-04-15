#require 'capistrano/maintenance'

set :application, "depot1"
set :repository,  "https://github.com/la-himmel/Depot.git"
set :scm, :git

#set deploy_to, "D:\Server"
role :web, "depot1.com"                          # Your HTTP server, Apache/etc
role :app, "depot1.com"                          # This may be the same as your `Web` server
role :db,  "depot1.com", :primary => true # This is where Rails migrations will run
role :db,  "depot1.com"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end