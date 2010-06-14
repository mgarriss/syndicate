# TODO

Factory.sequence :email do |n|
  "person#{n}@example.com"
end

Factory.define :user do |f|
  f.email { Factory.next(:email) }
  f.password "password"
end

Factory.define :admin do |f|
  f.email { Factory.next(:email) }
  f.password "password"
end

Factory.define :region do |f|
  f.sequence(:regionID) {|n| n}
  f.sequence(:regionName) {|n| "region#{n}"}
  f.systems_count 0
  f.security_avg 0.0
end

Factory.define :constellation do |f|
  f.sequence(:constellationID) {|n| n}
  f.sequence(:constellationName) {|n| "constellation#{n}"}
  f.association :region
  f.systems_count 0
  f.security_avg 0.0
end

Factory.define :system do |f|
  f.sequence(:solarSystemID) {|n| n}
  f.sequence(:solarSystemName) {|n| "system#{n}"}
  f.association :region
  f.association :constellation
  f.security 0.0
end

Factory.define :faction do |f|
  f.sequence(:factionID) {|n| n}
  f.sequence(:factionName) {|n| "faction#{n}"}
end

Factory.define :universe do |f|
  f.sequence(:universeID) {|n| n}
  f.sequence(:universeName) {|n| "universe#{n}"}
end

Factory.define :group do |f|
  # f.sequence(:groupID) {|n| n}
  # f.sequence(:groupName) {|n| "group#{n}"}
end

Factory.define :agent_type do |f|
  # f.sequence(:agentID) {|n| n}
  # f.sequence(:agentName) {|n| "agent_type#{n}"}
end

Factory.define :agent do |f|
  # f.sequence(:agentID) {|n| n}
end

Factory.define :agent_config do |f|
  # f.sequence(:agentID) {|n| n}
  f.k 0
  f.v 0
end

Factory.define :research_agent do |f|
  f.sequence(:agentID) {|n| n}
  f.typeID 0
end

Factory.define :ancestry do |f|
  # f.sequence(:ancestryID) {|n| n}
end

Factory.define :character_attribute do |f|
  # f.sequence(:attributeID) {|n| n}
end

Factory.define :bloodline do |f|
  # f.sequence(:bloodlineID) {|n| n}
  # f.sequence(:bloodlineName) {|n| "bloodline#{n}"}
end

Factory.define :race do |f|
  # f.sequence(:raceID) {|n| n}
  # f.sequence(:raceName) {|n| "race#{n}"}
end

Factory.define :graphic do |f|
  # f.sequence(:graphicID) {|n| n}
end

Factory.define :eve_name do |f|
  # f.sequence(:nameID) {|n| n}
  f.itemID 0
end

Factory.define :eve_units do |f|
  # f.sequence(:unitID) {|n| n}
end

Factory.define :inventory_category do |f|
  f.sequence(:categoryID) {|n| n}
end

Factory.define :contraband_type do |f|
  # f.sequence(:contrabandID) {|n| n}
  f.factionID 0
  f.typeID 0
end

Factory.define :inventory_flag do |f|
  # f.sequence(:flagID) {|n| n}
end

Factory.define :market_group do |f|
  f.sequence(:marketGroupID) {|n| n}
end

Factory.define :meta_group do |f|
  f.sequence(:metaGroupID) {|n| n}
end

Factory.define :meta_type do |f|
  # f.sequence(:metaTypeID) {|n| n}
  f.typeID 0
end

Factory.define :type_material do |f|
  # f.sequence(:typeID) {|n| n}
  f.materialTypeID 0
  f.quantity 0
end

Factory.define :type_reaction do |f|
  f.sequence(:reactionTypeID) {|n| n}
  f.input 0
end

Factory.define :inventory_type do |f|
  # f.sequence(:typeID) {|n| n}
end

Factory.define :celestial_statistic do |f|
  # f.sequence(:celestialID) {|n| n}
end

Factory.define :landmark do |f|
  # f.sequence(:landmarkID) {|n| n}
end

Factory.define :station do |f|
  # f.sequence(:stationID) {|n| n}
end

Factory.define :station_type do |f|
  f.sequence(:stationTypeID) {|n| n}
end
