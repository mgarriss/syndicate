class MarketGroup < ActiveRecord::Base
  set_table_name 'invMarketGroups'
  set_primary_key 'marketGroupID'

  cattr_reader :per_page
  @@per_page = 180
end
