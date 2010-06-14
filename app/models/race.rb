class Race < ActiveRecord::Base
  set_table_name 'chrRaces'
  set_primary_key 'raceID'

  cattr_reader :per_page
  @@per_page = 180
end
