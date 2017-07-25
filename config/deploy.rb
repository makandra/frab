# config valid only for current version of Capistrano
lock '3.8.2'

set :application, 'frab'
set :scm, :git
set :repo_url, 'git@github.com:makandra/frab.git'

set :branch, 'master'
set :user, ENV['CAP_USER']

set :use_sudo,        false
set :stage,           :production
set :deploy_via,      :remote_cache
set :ssh_options,     forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa.pub)
set :bundle_without, %w(capistrano development test sqlite3).join(' ')
set :linked_files, %w(config/database.yml .env.production .ruby-version)
set :linked_dirs,  %w(log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system)
