class EveUnits < ActiveRecord::Base
  set_table_name 'eveUnits'
  set_primary_key 'unitID'

  cattr_reader :per_page
  @@per_page = 180
end
