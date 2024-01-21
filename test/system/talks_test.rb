require "application_system_test_case"

class TalksTest < ApplicationSystemTestCase
  setup do
    @talk = talks(:one)
  end

  test "visiting the index" do
    visit talks_url
    assert_selector "h1", text: "Talks"
  end

  test "should create talk" do
    visit talks_url
    click_on "New talk"

    check "Allow comments" if @talk.allow_comments
    fill_in "Caption", with: @talk.caption
    fill_in "Latitude", with: @talk.latitude
    fill_in "Longitude", with: @talk.longitude
    check "Show likes count" if @talk.show_likes_count
    fill_in "User", with: @talk.user_id
    click_on "Create Talk"

    assert_text "Talk was successfully created"
    click_on "Back"
  end

  test "should update Talk" do
    visit talk_url(@talk)
    click_on "Edit this talk", match: :first

    check "Allow comments" if @talk.allow_comments
    fill_in "Caption", with: @talk.caption
    fill_in "Latitude", with: @talk.latitude
    fill_in "Longitude", with: @talk.longitude
    check "Show likes count" if @talk.show_likes_count
    fill_in "User", with: @talk.user_id
    click_on "Update Talk"

    assert_text "Talk was successfully updated"
    click_on "Back"
  end

  test "should destroy Talk" do
    visit talk_url(@talk)
    click_on "Destroy this talk", match: :first

    assert_text "Talk was successfully destroyed"
  end
end
