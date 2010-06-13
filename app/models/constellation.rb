class Constellation < ActiveRecord::Base
  set_table_name 'mapConstellations'
  set_primary_key 'constellationID'
  
  belongs_to :region
  has_many :systems
end
