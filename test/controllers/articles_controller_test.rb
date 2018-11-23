require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :redirect
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :redirect
  end

  test "should update article" do
    patch article_url(@article), params: { article: { content: @article.content, image: @article.image, intro: @article.intro, title: @article.title } }
    assert_redirected_to root_url
  end

  test "should destroy article" do
    assert_difference('Article.count', 0) do
      delete article_url(@article)
    end

    assert_redirected_to root_url
  end
end
