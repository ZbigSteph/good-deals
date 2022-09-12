require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  setup do
    @article = articles(:one)
  end

  test "visiting the index" do
    visit articles_url
    assert_selector "h1", text: "Articles"
  end

  test "should create article" do
    visit articles_url
    click_on "New article"

    fill_in "Autres images", with: @article.autres_images
    fill_in "Category", with: @article.category_id
    fill_in "Description", with: @article.description
    fill_in "Image couverture", with: @article.image_couverture
    fill_in "Label", with: @article.label
    fill_in "Prix", with: @article.prix
    click_on "Create Article"

    assert_text "Article was successfully created"
    click_on "Back"
  end

  test "should update Article" do
    visit article_url(@article)
    click_on "Edit this article", match: :first

    fill_in "Autres images", with: @article.autres_images
    fill_in "Category", with: @article.category_id
    fill_in "Description", with: @article.description
    fill_in "Image couverture", with: @article.image_couverture
    fill_in "Label", with: @article.label
    fill_in "Prix", with: @article.prix
    click_on "Update Article"

    assert_text "Article was successfully updated"
    click_on "Back"
  end

  test "should destroy Article" do
    visit article_url(@article)
    click_on "Destroy this article", match: :first

    assert_text "Article was successfully destroyed"
  end
end
