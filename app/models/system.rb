class System < ActiveRecord::Base
  set_table_name 'mapSolarSystems'
  set_primary_key 'solarSystemID'
  
  belongs_to :region, :foreign_key => 'regionID'
  belongs_to :constellation, :foreign_key => 'constellationID'
  has_many :stations, :foreign_key => 'solarSystemID'
  
  cattr_reader :per_page
  @@per_page = 80
end
