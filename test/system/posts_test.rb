require "mobile_system_test_case"

class PostsTest < MobileSystemTestCase

  test "visiting the index" do
    visit articles_path
    assert_selector "h1", text: "Article"
  end
end
