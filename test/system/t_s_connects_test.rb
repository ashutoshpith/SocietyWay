require "application_system_test_case"

class TSConnectsTest < ApplicationSystemTestCase
  setup do
    @t_s_connect = t_s_connects(:one)
  end

  test "visiting the index" do
    visit t_s_connects_url
    assert_selector "h1", text: "Ts Connects"
  end

  test "creating a T s connect" do
    visit t_s_connects_url
    click_on "New Ts Connect"

    fill_in "Billing", with: @t_s_connect.billing_id
    fill_in "Shop", with: @t_s_connect.shop_id
    fill_in "Tenant", with: @t_s_connect.tenant_id
    click_on "Create T s connect"

    assert_text "T s connect was successfully created"
    click_on "Back"
  end

  test "updating a T s connect" do
    visit t_s_connects_url
    click_on "Edit", match: :first

    fill_in "Billing", with: @t_s_connect.billing_id
    fill_in "Shop", with: @t_s_connect.shop_id
    fill_in "Tenant", with: @t_s_connect.tenant_id
    click_on "Update T s connect"

    assert_text "T s connect was successfully updated"
    click_on "Back"
  end

  test "destroying a T s connect" do
    visit t_s_connects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "T s connect was successfully destroyed"
  end
end
