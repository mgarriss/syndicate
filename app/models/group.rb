class Group < ActiveRecord::Base
  set_table_name 'invGroups'
  set_primary_key 'groupID'

  cattr_reader :per_page
  @@per_page = 180
  
  has_many :inventory_types, :foreign_key => 'groupID'
end
