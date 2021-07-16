require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "example methods in fixtures" do
   # this will return the User object for the fixture named david
   users(:timon)
   # this will return the property for david called id
   @id = users(:timon).id
   # one can also access methods available on the User class
   timon = users(:timon)
   #timon.call(timon.partner)
   assert_equal "timon@lodgit.com", timon.email, "the given emails do not match"
  end
 
end
