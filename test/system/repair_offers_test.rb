require "application_system_test_case"

class RepairOffersTest < ApplicationSystemTestCase
  setup do
    @repair_offer = repair_offers(:one)
  end

  test "visiting the index" do
    visit repair_offers_url
    assert_selector "h1", text: "Repair offers"
  end

  test "should create repair offer" do
    visit repair_offers_url
    click_on "New repair offer"

    fill_in "Id forumpost", with: @repair_offer.ID_ForumPost
    fill_in "Id user", with: @repair_offer.ID_User
    fill_in "Content", with: @repair_offer.content
    fill_in "Description", with: @repair_offer.description
    click_on "Create Repair offer"

    assert_text "Repair offer was successfully created"
    click_on "Back"
  end

  test "should update Repair offer" do
    visit repair_offer_url(@repair_offer)
    click_on "Edit this repair offer", match: :first

    fill_in "Id forumpost", with: @repair_offer.ID_ForumPost
    fill_in "Id user", with: @repair_offer.ID_User
    fill_in "Content", with: @repair_offer.content
    fill_in "Description", with: @repair_offer.description
    click_on "Update Repair offer"

    assert_text "Repair offer was successfully updated"
    click_on "Back"
  end

  test "should destroy Repair offer" do
    visit repair_offer_url(@repair_offer)
    click_on "Destroy this repair offer", match: :first

    assert_text "Repair offer was successfully destroyed"
  end
end
