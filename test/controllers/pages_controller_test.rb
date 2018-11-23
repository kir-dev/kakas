require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page = pages(:one)
  end

  test "should get index" do
    get pages_url
    assert_response :success
  end

  test "should get new" do
    get new_page_url
    assert_response :redirect
  end

  test "should show page" do
    get page_url(@page)
    assert_response :success
  end

  test "should get edit" do
    get edit_page_url(@page)
    assert_response :redirect
  end

  test "should update page" do
    patch page_url(@page), params: { page: { content: @page.content, name: @page.name, title: @page.title } }
    assert_redirected_to root_url
  end

  test "should destroy page" do
    assert_difference('Page.count', 0) do
      delete page_url(@page)
    end

    assert_redirected_to root_url
  end
end
