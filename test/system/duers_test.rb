require "application_system_test_case"

class DuersTest < ApplicationSystemTestCase
  setup do
    @duer = duers(:one)
  end

  test "visiting the index" do
    visit duers_url
    assert_selector "h1", text: "Duers"
  end

  test "creating a Duer" do
    visit duers_url
    click_on "New Duer"

    fill_in "Activity", with: @duer.activity
    fill_in "Address", with: @duer.address
    fill_in "Effective", with: @duer.effective
    fill_in "Name", with: @duer.name
    fill_in "Other", with: @duer.other
    click_on "Create Duer"

    assert_text "Duer was successfully created"
    click_on "Back"
  end

  test "updating a Duer" do
    visit duers_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @duer.activity
    fill_in "Address", with: @duer.address
    fill_in "Effective", with: @duer.effective
    fill_in "Name", with: @duer.name
    fill_in "Other", with: @duer.other
    click_on "Update Duer"

    assert_text "Duer was successfully updated"
    click_on "Back"
  end

  test "destroying a Duer" do
    visit duers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Duer was successfully destroyed"
  end
end
