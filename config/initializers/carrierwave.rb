# require 'carrierwave/storage/abstract'
# require 'carrierwave/storage/file'
# require 'carrierwave/storage/fog'

# CarrierWave.configure do |config|
#   config.root = Rails.root.join('tmp') # adding these...
#   config.cache_dir = 'carrierwave' # ...two lines
#   if Rails.env.production?
#     config.storage :fog
#     config.fog_provider = 'fog/aws'
#   config.fog_credentials = {
#     :provider               => 'AWS',                        # required
#     :aws_access_key_id      => 'key',                        # required
#     :aws_secret_access_key  => 'secret',                     # required
#     :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
#     :host                   => 's3.example.com',             # optional, defaults to nil
#     :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
#   }
#   else
#     config.storage :file
#   config.enable_processing = true if Rails.env.test?
#   end

#   config.fog_directory  = 'directory'                             # required
#   config.fog_public     = false                                   # optional, defaults to true
#   config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
# end