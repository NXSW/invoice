require "application_system_test_case"

class SalesStaffsTest < ApplicationSystemTestCase
  setup do
    @sales_staff = sales_staffs(:one)
  end

  test "visiting the index" do
    visit sales_staffs_url
    assert_selector "h1", text: "Sales Staffs"
  end

  test "creating a Sales staff" do
    visit sales_staffs_url
    click_on "New Sales Staff"

    fill_in "Mail", with: @sales_staff.mail
    fill_in "Mail Cc 1", with: @sales_staff.mail_cc_1
    fill_in "Mail Cc 2", with: @sales_staff.mail_cc_2
    fill_in "Name", with: @sales_staff.name
    fill_in "Phone Num", with: @sales_staff.phone_num
    fill_in "String", with: @sales_staff.string
    click_on "Create Sales staff"

    assert_text "Sales staff was successfully created"
    click_on "Back"
  end

  test "updating a Sales staff" do
    visit sales_staffs_url
    click_on "Edit", match: :first

    fill_in "Mail", with: @sales_staff.mail
    fill_in "Mail Cc 1", with: @sales_staff.mail_cc_1
    fill_in "Mail Cc 2", with: @sales_staff.mail_cc_2
    fill_in "Name", with: @sales_staff.name
    fill_in "Phone Num", with: @sales_staff.phone_num
    fill_in "String", with: @sales_staff.string
    click_on "Update Sales staff"

    assert_text "Sales staff was successfully updated"
    click_on "Back"
  end

  test "destroying a Sales staff" do
    visit sales_staffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sales staff was successfully destroyed"
  end
end
