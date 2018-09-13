require 'test_helper'

class FlatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flat = flats(:one)
  end

  test "should get index" do
    get flats_url
    assert_response :success
  end

  test "should get new" do
    get new_flat_url
    assert_response :success
  end

  test "should create flat" do
    assert_difference('Flat.count') do
      post flats_url, params: { flat: { bhk_type: @flat.bhk_type, flat_no: @flat.flat_no, owner_id: @flat.owner_id, tenant_id: @flat.tenant_id } }
    end

    assert_redirected_to flat_url(Flat.last)
  end

  test "should show flat" do
    get flat_url(@flat)
    assert_response :success
  end

  test "should get edit" do
    get edit_flat_url(@flat)
    assert_response :success
  end

  test "should update flat" do
    patch flat_url(@flat), params: { flat: { bhk_type: @flat.bhk_type, flat_no: @flat.flat_no, owner_id: @flat.owner_id, tenant_id: @flat.tenant_id } }
    assert_redirected_to flat_url(@flat)
  end

  test "should destroy flat" do
    assert_difference('Flat.count', -1) do
      delete flat_url(@flat)
    end

    assert_redirected_to flats_url
  end
end
