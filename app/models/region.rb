class Region < ActiveRecord::Base
  set_table_name 'mapRegions'
  set_primary_key 'regionID'
  
  has_many :constellations, :foreign_key => 'constellationID'
  has_many :systems, :foreign_key => 'solarSystemID'
end
