class AgentConfig < ActiveRecord::Base
  set_table_name 'agtConfig'
  set_primary_key 'agentID'

  cattr_reader :per_page
  @@per_page = 180
end
