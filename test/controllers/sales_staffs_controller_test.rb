require 'test_helper'

class SalesStaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sales_staff = sales_staffs(:one)
  end

  test "should get index" do
    get sales_staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_sales_staff_url
    assert_response :success
  end

  test "should create sales_staff" do
    assert_difference('SalesStaff.count') do
      post sales_staffs_url, params: { sales_staff: { mail: @sales_staff.mail, mail_cc_1: @sales_staff.mail_cc_1, mail_cc_2: @sales_staff.mail_cc_2, name: @sales_staff.name, phone_num: @sales_staff.phone_num, string: @sales_staff.string } }
    end

    assert_redirected_to sales_staff_url(SalesStaff.last)
  end

  test "should show sales_staff" do
    get sales_staff_url(@sales_staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_sales_staff_url(@sales_staff)
    assert_response :success
  end

  test "should update sales_staff" do
    patch sales_staff_url(@sales_staff), params: { sales_staff: { mail: @sales_staff.mail, mail_cc_1: @sales_staff.mail_cc_1, mail_cc_2: @sales_staff.mail_cc_2, name: @sales_staff.name, phone_num: @sales_staff.phone_num, string: @sales_staff.string } }
    assert_redirected_to sales_staff_url(@sales_staff)
  end

  test "should destroy sales_staff" do
    assert_difference('SalesStaff.count', -1) do
      delete sales_staff_url(@sales_staff)
    end

    assert_redirected_to sales_staffs_url
  end
end
