require 'test_helper'

class TypeMaterialTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      TypeMaterial.delete_all
      @type_material = Factory(:type_material)
    end
    
    should "be valid" do
      assert @type_material.valid?
    end
  end
end
