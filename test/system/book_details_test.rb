require "application_system_test_case"

class BookDetailsTest < ApplicationSystemTestCase
  setup do
    @book_detail = book_details(:one)
  end

  test "visiting the index" do
    visit book_details_url
    assert_selector "h1", text: "Book Details"
  end

  test "creating a Book detail" do
    visit book_details_url
    click_on "New Book Detail"

    fill_in "Price", with: @book_detail.price
    fill_in "Title", with: @book_detail.title
    fill_in "Year published", with: @book_detail.year_published
    click_on "Create Book detail"

    assert_text "Book detail was successfully created"
    click_on "Back"
  end

  test "updating a Book detail" do
    visit book_details_url
    click_on "Edit", match: :first

    fill_in "Price", with: @book_detail.price
    fill_in "Title", with: @book_detail.title
    fill_in "Year published", with: @book_detail.year_published
    click_on "Update Book detail"

    assert_text "Book detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Book detail" do
    visit book_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book detail was successfully destroyed"
  end
end
