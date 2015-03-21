require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  def setup
    @status = Status.new(name:"Test")
  end

  test "should be valid" do
    assert @status.valid?
  end

  test "name should be present" do
    @status.name = "     "
    assert_not @status.valid?
  end

  test "name should not be too long" do
    @status.name = "a" * 251
    assert_not @status.valid?
  end
end
