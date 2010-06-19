class MetaType < ActiveRecord::Base
  set_table_name 'invMetaTypes'
  set_primary_key 'typeID'

  cattr_reader :per_page
  @@per_page = 180
  
  belongs_to :parent, :class_name => 'InventoryType', :foreign_key => 'parentTypeID'
  belongs_to :meta_group, :foreign_key => 'metaGroupID'
  has_many :meta_types, :foreign_key => 'parentTypeID', :primary_key => 'parentTypeID'
  has_many :inventory_types, :class_name => 'InventoryType', :foreign_key => 'typeID', :primary_key => 'parentTypeID'
end
