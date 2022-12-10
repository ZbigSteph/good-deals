require "application_system_test_case"

class SousCategoriesTest < ApplicationSystemTestCase
  setup do
    @sous_category = sous_categories(:one)
  end

  test "visiting the index" do
    visit sous_categories_url
    assert_selector "h1", text: "Sous categories"
  end

  test "should create sous category" do
    visit sous_categories_url
    click_on "New sous category"

    fill_in "Category", with: @sous_category.category_id
    fill_in "Titre", with: @sous_category.titre
    click_on "Create Sous category"

    assert_text "Sous category was successfully created"
    click_on "Back"
  end

  test "should update Sous category" do
    visit sous_category_url(@sous_category)
    click_on "Edit this sous category", match: :first

    fill_in "Category", with: @sous_category.category_id
    fill_in "Titre", with: @sous_category.titre
    click_on "Update Sous category"

    assert_text "Sous category was successfully updated"
    click_on "Back"
  end

  test "should destroy Sous category" do
    visit sous_category_url(@sous_category)
    click_on "Destroy this sous category", match: :first

    assert_text "Sous category was successfully destroyed"
  end
end
