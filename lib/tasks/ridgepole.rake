namespace :ridgepole do
  task enable_uuid: :environment do
    ActiveRecord::Base.connection.enable_extension 'pgcrypto'
  end

  task apply: :enable_uuid
end
