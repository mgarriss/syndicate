require 'test_helper'

class GraphicTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      Graphic.delete_all
      @graphic = Factory(:graphic)
    end
    
    should "be valid" do
      assert @graphic.valid?
    end
  end
end
