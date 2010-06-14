class Landmark < ActiveRecord::Base
  set_table_name 'mapLandmarks'
  set_primary_key 'landmarkID'

  cattr_reader :per_page
  @@per_page = 180
end
