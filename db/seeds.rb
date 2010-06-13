require 'eve_sql'

APP_CONFIG['admins'].each do |admin|
  Admin.create(admin) rescue (puts "not adding: #{admin['email']}")
end

Dir[File.join(Rails.root,'db','eve',APP_CONFIG['eve_version']) + "/*.sql"].each do |file|
  puts "loading: #{File.basename(file)}"
  EveSql.load_absolute file
end

conn = ActiveRecord::Base.connection

conn.add_column :mapRegions, :constellations_count, :integer
conn.add_column :mapRegions, :systems_count, :integer

conn.add_column :mapConstellations, :systems_count, :integer
conn.add_column :mapRegions, :security_avg, :double
conn.add_column :mapConstellations, :security_avg, :double

Region.reset_column_information
Constellation.reset_column_information

Region.all.each do |region|
  region.constellations_count = region.constellations.count
  region.systems_count = region.systems.count
  region.security_avg = region.systems.sum(:security) / region.systems_count
  region.save
end

Constellation.all.each do |constellation|
  constellation.systems_count = constellation.systems.count
  constellation.security_avg = constellation.systems.sum(:security) / constellation.systems_count
  constellation.save
end
