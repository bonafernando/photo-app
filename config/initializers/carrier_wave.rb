if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider => 'AWS',
      :aws_access_key_id => ENV['UDEMY_AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key => ENV['UDEMY_AWS_SECRET_ACCESS_KEY']
    }
    config.fog_directory = ENV['UDEMY_AWS_S3_BUCKET']
  end
end