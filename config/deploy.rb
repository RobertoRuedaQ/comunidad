set :application, 'comunidad2'
set :repo_url, 'https://github.com/RobertoRuedaQ/comunidad.git'
set :branch, "comunidad2"
set :deploy_via, :copy
set :deploy_to, '/home/deploy/comunidad2'
set :user, 'deploy'

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"