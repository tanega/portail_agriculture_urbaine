require 'test_helper'

class TypologyRelationTest < ActiveSupport::TestCase
  def setup
    @relation = TypologyRelation.new(project_id:1, typology_id:2)
  end

  test "should be valid" do
    assert @relation.valid?
  end

  test "project_id should be present" do
    @relation.project_id = nil
    assert_not @relation.valid?
  end

  test "typology_id should be present" do
    @relation.typology_id = nil
    assert_not @relation.valid?
  end
end
