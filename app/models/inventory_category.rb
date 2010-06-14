class InventoryCategory < ActiveRecord::Base
  set_table_name 'invCategories'
  set_primary_key 'categoryID'

  cattr_reader :per_page
  @@per_page = 180
end
