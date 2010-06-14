require 'test_helper'

class TypeReactionTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      TypeReaction.delete_all
      @type_reaction = Factory(:type_reaction)
    end
    
    should "be valid" do
      assert @type_reaction.valid?
    end
  end
end
