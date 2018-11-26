require 'test_helper'

class MealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meal = meals(:one)
  end

  test "should get index" do
    get meals_url
    assert_response :success
  end

  test "should get new" do
    get new_meal_url
    assert_response :redirect
  end

  test "should show meal" do
    get meal_url(@meal)
    assert_response :redirect
  end

  test "should get edit" do
    get edit_meal_url(@meal)
    assert_response :redirect
  end

  test "should update meal" do
    patch meal_url(@meal), params: { meal: { category_id: @meal.category_id, image: @meal.image, name: @meal.name, toppings: @meal.toppings } }
    assert_redirected_to root_url
  end

  test "should destroy meal" do
    assert_difference('Meal.count', 0) do
      delete meal_url(@meal)
    end

    assert_redirected_to root_url
  end
end
