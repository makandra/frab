# config valid only for current version of Capistrano
lock '3.8.2'

set :application, 'frab'
set :scm, :git
set :repo_url, 'git@github.com:makandra/frab.git'

set :branch, 'master'

set :keep_releases, 10
set :ssh_options, {
    forward_agent: true
}

set :use_sudo,        false
set :stage,           :production
set :bundle_without, %w(capistrano development test sqlite3).join(' ')
set :linked_files, %w(config/database.yml)
set :linked_dirs, %w(log public/system)
