class Bloodline < ActiveRecord::Base
  set_table_name 'chrBloodlines'
  set_primary_key 'bloodlineID'

  cattr_reader :per_page
  @@per_page = 180
end
