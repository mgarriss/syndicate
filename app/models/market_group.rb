class MarketGroup < ActiveRecord::Base
  set_table_name 'invMarketGroups'
  set_primary_key 'marketGroupID'
  
  acts_as_tree :foreign_key => 'parentGroupID'
  
  scope :top_level, where('parentGroupID is null')
  scope :with_parent, lambda{|parent| where(['parentGroupID = ?', parent])}

  cattr_reader :per_page
  @@per_page = 180
end
