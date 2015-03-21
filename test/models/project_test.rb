require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  def setup
    @project = Project.new(name:"Test")
  end

  test "should be valid" do
    assert @project.valid?
  end

  test "name should be present" do
    @project.name = "     "
    assert_not @project.valid?
  end

  test "name should not be too long" do
    @project.name = "a" * 51
    assert_not @project.valid?
  end

  test "description should not be too long" do
    @project.description = "a" * 251
    assert_not @project.valid?
  end

  test "how_to_participate should not be too long" do
    @project.how_to_participate = "a" * 251
    assert_not @project.valid?
  end
end
