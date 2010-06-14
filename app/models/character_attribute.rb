class CharacterAttribute < ActiveRecord::Base
  set_table_name 'chrAttributes'
  set_primary_key 'attributeID'

  cattr_reader :per_page
  @@per_page = 180
end
