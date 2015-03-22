require 'test_helper'

class TagRelationTest < ActiveSupport::TestCase
  def setup
    @relation = TagRelation.new(project_id:1, tag_id:2)
  end

  test "should be valid" do
    assert @relation.valid?
  end

  test "name should be present" do
    @relation.project_id = nil
    assert_not @relation.valid?
  end

  test "subtypology_id should be present" do
    @relation.tag_id = nil
    assert_not @relation.valid?
  end
end
