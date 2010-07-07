require 'eve_sql'

APP_CONFIG['admins'].each do |admin|
  Admin.create(admin) rescue (puts "not adding: #{admin['email']}")
end

Dir[File.join(Rails.root,'db','eve',APP_CONFIG['eve_version']) + "/mysql/*.sql"].each do |file|
  puts "loading: #{File.basename(file)}"
  EveSql.load_absolute file
end

class AddSystemCounts < ActiveRecord::Migration
  def self.up
    add_column :mapRegions, :constellations_count, :integer
    add_column :mapRegions, :systems_count, :integer
    add_column :mapRegions, :security_avg, :float

    add_column :mapConstellations, :systems_count, :integer
    add_column :mapConstellations, :security_avg, :float
  end
end
AddSystemCounts.up

Region.reset_column_information
Constellation.reset_column_information

Region.find_each do |region|
  region.constellations_count = region.constellations.count
  region.systems_count = region.systems.count
  region.security_avg = region.systems.sum(:security) / region.systems_count
  region.save!
end

Constellation.find_each do |constellation|
  constellation.systems_count = constellation.systems.count
  constellation.security_avg = constellation.systems.sum(:security) / constellation.systems_count
  constellation.save!
end

puts "neo4j: removing nodes..."
begin
  Neo4j.all_nodes do |node|
    node.del
    puts "deleted node: #{node}"
  end
rescue org.neo4j.graphdb.NotFoundException => e
  p e
end

#Neo4j::BatchInserter.new do |b|
Neo4j::Transaction.new
puts "neo4j: adding system nodes..."
System.find_each do |system|
  Node::System.new :solarSystemID => system.solarSystemID,
                   :solarSystemName => system.solarSystemName.downcase
end
Neo4j::Transaction.finish

Neo4j::Transaction.new
puts "neo4j: adding jumps..."
File.open(File.expand_path( '../../db/eve/tyr10/neo4j/', __FILE__) + '/system_jumps.csv').readlines.each do |line|
  from_id, to_id = line.split(',')
  Node::System.find(:solarSystemID => from_id.to_i).first.jumps <<
    Node::System.find(:solarSystemID => to_id.to_i).first
end
Neo4j::Transaction.finish
#end
