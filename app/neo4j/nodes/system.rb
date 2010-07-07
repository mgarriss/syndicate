class Node::System
  include Neo4j::NodeMixin
  
  property :solarSystemID, :solarSystemName
  
  has_n :jumps
  
  index :solarSystemID, :solarSystemName
end
