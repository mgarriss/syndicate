module Neo4jHelpers
  def self.delete_all_nodes
    Neo4j::Transaction.run do
      begin
        Neo4j.all_nodes do |node|
          node.del
        end
      end
    end
  end
end
