class Graphic < ActiveRecord::Base
  set_table_name 'eveGraphics'
  set_primary_key 'graphicID'

  cattr_reader :per_page
  @@per_page = 180
end
