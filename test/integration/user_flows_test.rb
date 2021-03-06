require "test_helper"

class UserFlowsTest < ActionDispatch::IntegrationTest
  test "can create an article" do
    get "/articles/new"
    assert_response :success
  
    post "/articles",
      params: { article: { title: "can create", body: "article successfully." , status: "public"} }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", "article successfully."
  end  
  
end