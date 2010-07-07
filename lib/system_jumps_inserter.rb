Neo4j::BatchInserter.new do |b|
  Systems.find_each do |system|
    Node::System.new :solarSystemID => system.solarSystemID,
                     :solarSystemName => system.solarSystemName
  end
  
  File.open('db/eve/tyr10/neo4j/systems_jumps.csv').readlines do |line|
    
  end
end
