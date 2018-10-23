require "application_system_test_case"

class BillTosTest < ApplicationSystemTestCase
  setup do
    @bill_to = bill_tos(:one)
  end

  test "visiting the index" do
    visit bill_tos_url
    assert_selector "h1", text: "Bill Tos"
  end

  test "creating a Bill to" do
    visit bill_tos_url
    click_on "New Bill To"

    fill_in "Name", with: @bill_to.name
    click_on "Create Bill to"

    assert_text "Bill to was successfully created"
    click_on "Back"
  end

  test "updating a Bill to" do
    visit bill_tos_url
    click_on "Edit", match: :first

    fill_in "Name", with: @bill_to.name
    click_on "Update Bill to"

    assert_text "Bill to was successfully updated"
    click_on "Back"
  end

  test "destroying a Bill to" do
    visit bill_tos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bill to was successfully destroyed"
  end
end
