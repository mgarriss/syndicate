class TypeMaterial < ActiveRecord::Base
  set_table_name 'invTypeMaterials'
  set_primary_key 'typeID'

  cattr_reader :per_page
  @@per_page = 180
end
