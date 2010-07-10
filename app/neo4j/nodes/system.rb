class SystemNode
  include Neo4j::NodeMixin
  
  property :solarSystemID, :solarSystemName
  
  has_n(:jumps) #.to(SystemNode).relationship(Jump)
  
  index :solarSystemID, :solarSystemName
end
