require 'eve_sql'

APP_CONFIG['admins'].each do |admin|
  Admin.create(admin) rescue (puts "not adding: #{admin['email']}")
end

Dir[File.join(Rails.root,'db','eve',APP_CONFIG['eve_version']) + "/*.sql"].each do |file|
  puts "loading: #{File.basename(file)}"
  EveSql.load_absolute file
end
