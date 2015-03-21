require 'test_helper'

class TypologyTest < ActiveSupport::TestCase
  def setup
    @typo = Typology.new(name:"Test", subtypology_id:1)
  end

  test "should be valid" do
    assert @typo.valid?
  end

  test "name should be present" do
    @typo.name = "     "
    assert_not @typo.valid?
  end

  test "subtypology_id should be present" do
    @typo.subtypology_id = "     "
    assert_not @typo.valid?
  end

  test "name should not be too long" do
    @typo.name = "a" * 251
    assert_not @typo.valid?
  end
end
