require 'test_helper'

class CharacterAttributeTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      CharacterAttribute.delete_all
      @character_attribute = Factory(:character_attribute)
    end
    
    should "be valid" do
      assert @character_attribute.valid?
    end
  end
end
