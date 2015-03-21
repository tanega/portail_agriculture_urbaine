require 'test_helper'

class CollectiveTypeTest < ActiveSupport::TestCase
  def setup
    @type = CollectiveType.new(name:"Test")
  end

  test "should be valid" do
    assert @type.valid?
  end

  test "name should be present" do
    @type.name = "     "
    assert_not @type.valid?
  end

  test "name should not be too long" do
    @type.name = "a" * 251
    assert_not @type.valid?
  end
end
