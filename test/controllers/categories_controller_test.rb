require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = categories(:one)
  end

  test "should get index" do
    get categories_url
    assert_response :redirect
  end

  test "should get new" do
    get new_category_url
    assert_response :redirect
  end

  test "should show category" do
    get category_url(@category)
    assert_response :redirect
  end

  test "should get edit" do
    get edit_category_url(@category)
    assert_response :redirect
  end

  test "should update category" do
    patch category_url(@category), params: { category: { name: @category.name } }
    assert_redirected_to root_url
  end

  test "should destroy category" do
    assert_difference('Category.count', 0) do
      delete category_url(@category)
    end

    assert_redirected_to root_url
  end
end
