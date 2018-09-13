require 'test_helper'

class TSConnectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_s_connect = t_s_connects(:one)
  end

  test "should get index" do
    get t_s_connects_url
    assert_response :success
  end

  test "should get new" do
    get new_t_s_connect_url
    assert_response :success
  end

  test "should create t_s_connect" do
    assert_difference('TSConnect.count') do
      post t_s_connects_url, params: { t_s_connect: { billing_id: @t_s_connect.billing_id, shop_id: @t_s_connect.shop_id, tenant_id: @t_s_connect.tenant_id } }
    end

    assert_redirected_to t_s_connect_url(TSConnect.last)
  end

  test "should show t_s_connect" do
    get t_s_connect_url(@t_s_connect)
    assert_response :success
  end

  test "should get edit" do
    get edit_t_s_connect_url(@t_s_connect)
    assert_response :success
  end

  test "should update t_s_connect" do
    patch t_s_connect_url(@t_s_connect), params: { t_s_connect: { billing_id: @t_s_connect.billing_id, shop_id: @t_s_connect.shop_id, tenant_id: @t_s_connect.tenant_id } }
    assert_redirected_to t_s_connect_url(@t_s_connect)
  end

  test "should destroy t_s_connect" do
    assert_difference('TSConnect.count', -1) do
      delete t_s_connect_url(@t_s_connect)
    end

    assert_redirected_to t_s_connects_url
  end
end
