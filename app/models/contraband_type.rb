class ContrabandType < ActiveRecord::Base
  set_table_name 'invContrabandTypes'
  # set_primary_keys :factionID, :typeID

  cattr_reader :per_page
  @@per_page = 180
end
