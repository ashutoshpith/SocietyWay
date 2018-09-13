require 'test_helper'

class TsconnectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tsconnect = tsconnects(:one)
  end

  test "should get index" do
    get tsconnects_url
    assert_response :success
  end

  test "should get new" do
    get new_tsconnect_url
    assert_response :success
  end

  test "should create tsconnect" do
    assert_difference('Tsconnect.count') do
      post tsconnects_url, params: { tsconnect: { billing_id: @tsconnect.billing_id, shop_id: @tsconnect.shop_id, tenant_id: @tsconnect.tenant_id } }
    end

    assert_redirected_to tsconnect_url(Tsconnect.last)
  end

  test "should show tsconnect" do
    get tsconnect_url(@tsconnect)
    assert_response :success
  end

  test "should get edit" do
    get edit_tsconnect_url(@tsconnect)
    assert_response :success
  end

  test "should update tsconnect" do
    patch tsconnect_url(@tsconnect), params: { tsconnect: { billing_id: @tsconnect.billing_id, shop_id: @tsconnect.shop_id, tenant_id: @tsconnect.tenant_id } }
    assert_redirected_to tsconnect_url(@tsconnect)
  end

  test "should destroy tsconnect" do
    assert_difference('Tsconnect.count', -1) do
      delete tsconnect_url(@tsconnect)
    end

    assert_redirected_to tsconnects_url
  end
end
