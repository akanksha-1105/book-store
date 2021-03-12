require "application_system_test_case"

class AuthersTest < ApplicationSystemTestCase
  setup do
    @auther = authers(:one)
  end

  test "visiting the index" do
    visit authers_url
    assert_selector "h1", text: "Authers"
  end

  test "creating a Auther" do
    visit authers_url
    click_on "New Auther"

    fill_in "First name", with: @auther.first_name
    fill_in "Last name", with: @auther.last_name
    fill_in "Title", with: @auther.title
    click_on "Create Auther"

    assert_text "Auther was successfully created"
    click_on "Back"
  end

  test "updating a Auther" do
    visit authers_url
    click_on "Edit", match: :first

    fill_in "First name", with: @auther.first_name
    fill_in "Last name", with: @auther.last_name
    fill_in "Title", with: @auther.title
    click_on "Update Auther"

    assert_text "Auther was successfully updated"
    click_on "Back"
  end

  test "destroying a Auther" do
    visit authers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Auther was successfully destroyed"
  end
end
