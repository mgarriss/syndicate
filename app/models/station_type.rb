class StationType < ActiveRecord::Base
  set_table_name 'staStationTypes'
  set_primary_key 'stationTypeID'

  cattr_reader :per_page
  @@per_page = 180
end
