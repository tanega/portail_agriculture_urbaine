require 'test_helper'

class TagTest < ActiveSupport::TestCase
  def setup
    @tag = Tag.new(name:"Le Français")
  end

  test "should be valid" do
    assert @tag.valid?
  end

  test "name should be present" do
    @tag.name = "     "
    assert_not @tag.valid?
  end

  test "name should not be too long" do
    @tag.name = "a" * 251
    assert_not @tag.valid?
  end
end
