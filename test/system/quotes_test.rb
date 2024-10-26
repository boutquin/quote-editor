require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  include ApplicationHelper

  setup do
    # We need to sign in as a user to access the quotes
    login_as users(:accountant)
    # We need to get a quote to test
    @quote = Quote.ordered.first
  end

  test "Showing a quote" do
    # When we visit the quotes_path, we can see the quote name
    visit quotes_path
    assert_selector "h1", text: "Quotes"

    # When we click on the quote name, we see the quote details
    click_link @quote.name
    assert_selector "h1", text: @quote.name
  end

  test "Creating a new quote" do
    # When we visit the quotes_path, we can see the Quotes header
    visit quotes_path
    assert_selector "h1", text: "Quotes"

    # When we click on the New quote link and fill in the name field
    click_on "New quote"
    fill_in "Name", with: "Capybara quote"
    click_on "Create quote"

    # We remain on the Quotes page
    # And we see the new quote
    assert_selector "h1", text: "Quotes"
    assert_text "Capybara quote"
  end

  test "Updating a quote" do
    # When we visit the quotes_path, we can see the Quotes header
    visit quotes_path
    assert_selector "h1", text: "Quotes"

    # When we click on the Edit link and fill in the name field
    click_on "Edit", match: :first
    fill_in "Name", with: "Updated quote"
    click_on "Update quote"

    # We remain on the Quotes page
    # And we see the updated quote
    assert_selector "h1", text: "Quotes"
    assert_text "Updated quote"
  end

  test "Destroying a quote" do
    # When we visit the quotes_path, we can see the quote name
    visit quotes_path
    assert_text @quote.name

    # When we click on the delete link, the quote is removed
    click_on "Delete", match: :first
    assert_no_text @quote.name
  end
end
