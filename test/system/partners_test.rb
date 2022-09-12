require "application_system_test_case"

class PartnersTest < ApplicationSystemTestCase
  setup do
    @partner = partners(:one)
  end

  test "visiting the index" do
    visit partners_url
    assert_selector "h1", text: "Partners"
  end

  test "should create partner" do
    visit partners_url
    click_on "New partner"

    fill_in "Email", with: @partner.email
    fill_in "Libelle", with: @partner.libelle
    fill_in "Logo", with: @partner.logo
    fill_in "Pays", with: @partner.pays
    fill_in "Quartier", with: @partner.quartier
    fill_in "Telephone", with: @partner.telephone
    fill_in "Ville", with: @partner.ville
    click_on "Create Partner"

    assert_text "Partner was successfully created"
    click_on "Back"
  end

  test "should update Partner" do
    visit partner_url(@partner)
    click_on "Edit this partner", match: :first

    fill_in "Email", with: @partner.email
    fill_in "Libelle", with: @partner.libelle
    fill_in "Logo", with: @partner.logo
    fill_in "Pays", with: @partner.pays
    fill_in "Quartier", with: @partner.quartier
    fill_in "Telephone", with: @partner.telephone
    fill_in "Ville", with: @partner.ville
    click_on "Update Partner"

    assert_text "Partner was successfully updated"
    click_on "Back"
  end

  test "should destroy Partner" do
    visit partner_url(@partner)
    click_on "Destroy this partner", match: :first

    assert_text "Partner was successfully destroyed"
  end
end
