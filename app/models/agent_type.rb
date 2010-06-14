class AgentType < ActiveRecord::Base
  set_table_name 'agtAgentTypes'
  set_primary_key 'agentTypeID'

  cattr_reader :per_page
  @@per_page = 180
end
