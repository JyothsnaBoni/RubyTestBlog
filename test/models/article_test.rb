require "test_helper"
class ArticleTest < ActiveSupport::TestCase
   # test "the truth" do
   #  assert false 
   # end

  test "should not save article without title" do
    article = Article.new
    article.body  = "This article has data"
    assert_not article.save, "Saved the article without a title"
  end

  test "should not save article without body" do
    article = Article.new
    article.title  = "This article has title"
    assert_not article.save, "Saved the article without a body"
  end
  
end
