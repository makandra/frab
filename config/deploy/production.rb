# server '127.0.0.1', roles: %w{app db web}, primary: true, port: '22'
set :deploy_to, '/var/www/cfp.rubyonice.com'
set :stage, :production
set :rails_env, 'production'

server 'app01-prod.rubyonice.makandra.de', user: 'deploy-cfp_p', roles: %w{app db web}, primary: true
server 'app02-prod.rubyonice.makandra.de', user: 'deploy-cfp_p', roles: %w{app db web}
