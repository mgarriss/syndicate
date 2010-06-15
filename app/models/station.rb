class Station < ActiveRecord::Base
  set_table_name 'staStations'
  set_primary_key 'stationID'

  cattr_reader :per_page
  @@per_page = 180
  
  belongs_to :system, :foreign_key => 'solarSystemID'
  belongs_to :constellation, :foreign_key => 'constellationID'
  belongs_to :region, :foreign_key => 'regionID'
end
