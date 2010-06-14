class EveName < ActiveRecord::Base
  set_table_name 'eveNames'
  set_primary_key 'itemID'

  cattr_reader :per_page
  @@per_page = 180
end
