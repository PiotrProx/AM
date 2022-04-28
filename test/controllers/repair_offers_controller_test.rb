require "test_helper"

class RepairOffersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repair_offer = repair_offers(:one)
  end

  test "should get index" do
    get repair_offers_url
    assert_response :success
  end

  test "should get new" do
    get new_repair_offer_url
    assert_response :success
  end

  test "should create repair_offer" do
    assert_difference("RepairOffer.count") do
      post repair_offers_url, params: { repair_offer: { ID_ForumPost: @repair_offer.ID_ForumPost, ID_User: @repair_offer.ID_User, content: @repair_offer.content, description: @repair_offer.description } }
    end

    assert_redirected_to repair_offer_url(RepairOffer.last)
  end

  test "should show repair_offer" do
    get repair_offer_url(@repair_offer)
    assert_response :success
  end

  test "should get edit" do
    get edit_repair_offer_url(@repair_offer)
    assert_response :success
  end

  test "should update repair_offer" do
    patch repair_offer_url(@repair_offer), params: { repair_offer: { ID_ForumPost: @repair_offer.ID_ForumPost, ID_User: @repair_offer.ID_User, content: @repair_offer.content, description: @repair_offer.description } }
    assert_redirected_to repair_offer_url(@repair_offer)
  end

  test "should destroy repair_offer" do
    assert_difference("RepairOffer.count", -1) do
      delete repair_offer_url(@repair_offer)
    end

    assert_redirected_to repair_offers_url
  end
end
