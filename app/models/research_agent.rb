class ResearchAgent < ActiveRecord::Base
  set_table_name 'agtResearchAgents'
  # set_primary_keys :agentID, :typeID

  cattr_reader :per_page
  @@per_page = 180
end
