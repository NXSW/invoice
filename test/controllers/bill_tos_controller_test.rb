require 'test_helper'

class BillTosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill_to = bill_tos(:one)
  end

  test "should get index" do
    get bill_tos_url
    assert_response :success
  end

  test "should get new" do
    get new_bill_to_url
    assert_response :success
  end

  test "should create bill_to" do
    assert_difference('BillTo.count') do
      post bill_tos_url, params: { bill_to: { name: @bill_to.name } }
    end

    assert_redirected_to bill_to_url(BillTo.last)
  end

  test "should show bill_to" do
    get bill_to_url(@bill_to)
    assert_response :success
  end

  test "should get edit" do
    get edit_bill_to_url(@bill_to)
    assert_response :success
  end

  test "should update bill_to" do
    patch bill_to_url(@bill_to), params: { bill_to: { name: @bill_to.name } }
    assert_redirected_to bill_to_url(@bill_to)
  end

  test "should destroy bill_to" do
    assert_difference('BillTo.count', -1) do
      delete bill_to_url(@bill_to)
    end

    assert_redirected_to bill_tos_url
  end
end
