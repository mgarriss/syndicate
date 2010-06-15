class Constellation < ActiveRecord::Base
  set_table_name 'mapConstellations'
  set_primary_key 'constellationID'
  
  belongs_to :region, :foreign_key => 'regionID'
  has_many :systems, :foreign_key => 'constellationID'
  has_many :stations, :foreign_key => 'constellationID'
end
