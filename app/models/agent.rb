class Agent < ActiveRecord::Base
  set_table_name 'agtAgents'
  set_primary_key 'agentID'

  cattr_reader :per_page
  @@per_page = 180
end
