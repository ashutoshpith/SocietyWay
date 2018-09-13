require 'test_helper'

class TenantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tenant = tenants(:one)
  end

  test "should get index" do
    get tenants_url
    assert_response :success
  end

  test "should get new" do
    get new_tenant_url
    assert_response :success
  end

  test "should create tenant" do
    assert_difference('Tenant.count') do
      post tenants_url, params: { tenant: { admin_id: @tenant.admin_id, entry: @tenant.entry, first_name: @tenant.first_name, last_name: @tenant.last_name, leaving: @tenant.leaving, parking: @tenant.parking, room_no: @tenant.room_no } }
    end

    assert_redirected_to tenant_url(Tenant.last)
  end

  test "should show tenant" do
    get tenant_url(@tenant)
    assert_response :success
  end

  test "should get edit" do
    get edit_tenant_url(@tenant)
    assert_response :success
  end

  test "should update tenant" do
    patch tenant_url(@tenant), params: { tenant: { admin_id: @tenant.admin_id, entry: @tenant.entry, first_name: @tenant.first_name, last_name: @tenant.last_name, leaving: @tenant.leaving, parking: @tenant.parking, room_no: @tenant.room_no } }
    assert_redirected_to tenant_url(@tenant)
  end

  test "should destroy tenant" do
    assert_difference('Tenant.count', -1) do
      delete tenant_url(@tenant)
    end

    assert_redirected_to tenants_url
  end
end
