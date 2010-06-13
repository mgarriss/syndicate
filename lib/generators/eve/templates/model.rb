class <%= file_name.camelize %> < ActiveRecord::Base
  set_table_name '<%= eve_table_name %>'
  set_primary_key '<%= EveSql.primary_key(eve_table_name) %>'
end
