class MetaType < ActiveRecord::Base
  set_table_name 'invMetaTypes'
  set_primary_key 'typeID'

  cattr_reader :per_page
  @@per_page = 180
end
