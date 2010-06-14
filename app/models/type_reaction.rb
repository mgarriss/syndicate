class TypeReaction < ActiveRecord::Base
  set_table_name 'invTypeReactions'
  set_primary_key 'typeID'

  cattr_reader :per_page
  @@per_page = 180
end
