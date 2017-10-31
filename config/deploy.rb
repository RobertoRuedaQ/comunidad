set :application, 'comunidad'
set :repo_url, 'https://github.com/RobertoRuedaQ/comunidad.git'
set :branch, "master"
set :deploy_via, :copy
set :deploy_to, '/home/deploy/comunidad'
set :user, 'deploy'

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"