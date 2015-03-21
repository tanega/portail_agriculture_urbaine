require 'test_helper'

class CollectiveTest < ActiveSupport::TestCase
  def setup
    @collective = Collective.new(name:"Le Français", phone:"0234460687",
                            email:"flefrancais@france.fr", collective_type_id: 1,
                            website:"www.monassocool.com")
  end

  test "should be valid" do
    assert @collective.valid?
  end

  test "name should be present" do
    @collective.name = "     "
    assert_not @collective.valid?
  end

  test "name should not be too long" do
    @collective.name = "a" * 251
    assert_not @collective.valid?
  end

  test "email should not be too long" do
    @collective.email = "a" * 244 + "@example.com"
    assert_not @collective.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @collective.email = valid_address
      assert @collective.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @collective.email = invalid_address
      assert_not @collective.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @collective.email = mixed_case_email
    @collective.save
    assert_equal mixed_case_email.downcase, @collective.reload.email
  end
end
