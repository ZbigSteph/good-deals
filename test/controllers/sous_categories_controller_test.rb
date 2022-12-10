require "test_helper"

class SousCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sous_category = sous_categories(:one)
  end

  test "should get index" do
    get sous_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_sous_category_url
    assert_response :success
  end

  test "should create sous_category" do
    assert_difference("SousCategory.count") do
      post sous_categories_url, params: { sous_category: { category_id: @sous_category.category_id, titre: @sous_category.titre } }
    end

    assert_redirected_to sous_category_url(SousCategory.last)
  end

  test "should show sous_category" do
    get sous_category_url(@sous_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_sous_category_url(@sous_category)
    assert_response :success
  end

  test "should update sous_category" do
    patch sous_category_url(@sous_category), params: { sous_category: { category_id: @sous_category.category_id, titre: @sous_category.titre } }
    assert_redirected_to sous_category_url(@sous_category)
  end

  test "should destroy sous_category" do
    assert_difference("SousCategory.count", -1) do
      delete sous_category_url(@sous_category)
    end

    assert_redirected_to sous_categories_url
  end
end
