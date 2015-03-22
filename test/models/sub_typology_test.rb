require 'test_helper'

class SubTypologyTest < ActiveSupport::TestCase
  def setup
    @subtypo = SubTypology.new(name:"Test")
  end

  test "should be valid" do
    assert @subtypo.valid?
  end

  test "name should be present" do
    @subtypo.name = "     "
    assert_not @subtypo.valid?
  end

  test "name should not be too long" do
    @subtypo.name = "a" * 251
    assert_not @subtypo.valid?
  end
end
