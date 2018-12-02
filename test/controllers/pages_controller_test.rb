require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page = pages(:one)
  end

  test "should get edit" do
    get edit_page_url(@page)
    assert_response :redirect
  end

  test "should update page" do
    patch page_url(@page), params: { page: { content: @page.content, name: @page.name, title: @page.title } }
    assert_redirected_to root_url
  end
end
