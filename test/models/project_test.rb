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

  test "should add and remove a tag" do
    project_test = projects(:one)
    tag = tags(:one)
    assert_not project_test.has_tag?(tag)
    project_test.add_tag(tag)
    assert project_test.has_tag?(tag)
    project_test.remove_tag(tag)
    assert_not project_test.has_tag?(tag)
  end

  test "should add and remove a typology" do
    project_test = projects(:one)
    typology = typologies(:one)
    assert_not project_test.has_typology?(typology)
    project_test.add_typology(typology)
    assert project_test.has_typology?(typology)
    project_test.remove_typology(typology)
    assert_not project_test.has_typology?(typology)
  end
end
