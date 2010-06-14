class MetaGroup < ActiveRecord::Base
  set_table_name 'invMetaGroups'
  set_primary_key 'metaGroupID'

  cattr_reader :per_page
  @@per_page = 180
end
