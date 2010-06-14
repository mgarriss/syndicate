class CelestialStatistic < ActiveRecord::Base
  set_table_name 'mapCelestialStatistics'
  set_primary_key 'celestialID'

  cattr_reader :per_page
  @@per_page = 180
end
