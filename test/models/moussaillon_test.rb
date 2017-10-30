require 'test_helper'

class MoussaillonTest < ActiveSupport::TestCase

  def setup
    @moussaillon = Moussaillon.new(username: "Example User", mail: "user@example.com",
                                password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid" do
    assert @moussaillon.valid?
  end

  test "password should be present (nonblank)" do
   @moussaillon.password = @moussaillon.password_confirmation = " " * 6
   assert_not @moussaillon.valid?
 end

 test "password should have a minimum length" do
   @moussaillon.password = @moussaillon.password_confirmation = "a" * 5
   assert_not @moussaillon.valid?
 end

end
