class Ancestry < ActiveRecord::Base
  set_table_name 'chrAncestries'
  set_primary_key 'ancestryID'

  cattr_reader :per_page
  @@per_page = 180
end
