# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'pretty_as_a_picture_scarves'
set :repo_url, 'git@github.com:stevetong83/scarf_shop.git'
set :deploy_to, "/home/deploy/pretty_as_a_picture_scarves"
set :user, 'deploy'
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets}
set :unicorn_config_path, "#/home/deploy/pretty_as_a_picture_scarves/config/unicorn.rb"

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
  end

  after :publishing, :restart

  after :restart, :clear_cache do
  end

end

require 'capistrano-unicorn'
after 'deploy:restart', 'unicorn:reload'    # app IS NOT preloaded
after 'deploy:restart', 'unicorn:restart'   # app preloaded
after 'deploy:restart', 'unicorn:duplicate'
