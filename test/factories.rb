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
end

Factory.define :constellation do |f|
  f.sequence(:constellationID) {|n| n}
  f.sequence(:constellationName) {|n| "constellation#{n}"}
end

Factory.define :system do |f|
  f.sequence(:solarSystemID) {|n| n}
  f.sequence(:solarSystemName) {|n| "system#{n}"}
end

Factory.define :faction do |f|
  f.sequence(:factionID) {|n| n}
end
