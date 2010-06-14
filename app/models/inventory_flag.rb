class InventoryFlag < ActiveRecord::Base
  set_table_name 'invFlags'
  set_primary_key 'flagID'

  cattr_reader :per_page
  @@per_page = 180
end
