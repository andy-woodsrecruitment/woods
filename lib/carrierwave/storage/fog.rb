# CarrierWave.configure do |config|
#   config.fog_provider = 'fog/aws'                        # required
#   config.fog_credentials = {
#     provider:              'AWS',                        # required
#     aws_access_key_id:     ENV.fetch('AWS_ACCESS_KEY_ID'),                        # required
#     aws_secret_access_key: ENV.fetch('AWS_SECRET_KEY'),                   # required
#     region:                ENV.fetch('AWS_REGION'),       # optional, defaults to 'us-east-1'
#
#   }
#   config.fog_directory  = ENV.fetch('S3_BUCKET')                                 # required
#   config.fog_public     = false                                                 # optional, defaults to true
#   config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
# end
