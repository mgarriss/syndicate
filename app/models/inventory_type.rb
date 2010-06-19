class InventoryType < ActiveRecord::Base
  set_table_name 'invTypes'
  set_primary_key 'typeID'

  cattr_reader :per_page
  @@per_page = 180
  
  belongs_to :race, :foreign_key => 'raceID'
  belongs_to :group, :foreign_key => 'groupID'
  
  has_one :meta_type, :foreign_key => 'typeID'
  has_many :meta_types, :foreign_key => 'parentTypeID'
  
  has_one :inventory_category, :through => :group
  
  # tree struction
  has_one :parent, :class_name => 'InventoryType', :through => :meta_type,
    :foreign_key => 'parentTypeID'
  has_many :siblings, :class_name => 'InventoryType', :through => :meta_type, :foreign_key => 'typeID', :source => :parent
  has_many :children, :class_name => 'InventoryType', :through => :meta_types, :foreign_key => 'typeID', :source => :inventory_types
end
