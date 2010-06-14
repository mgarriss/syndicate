class Station < ActiveRecord::Base
  set_table_name 'staStations'
  set_primary_key 'stationID'

  cattr_reader :per_page
  @@per_page = 180
end
