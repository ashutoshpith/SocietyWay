require "application_system_test_case"

class TsconnectsTest < ApplicationSystemTestCase
  setup do
    @tsconnect = tsconnects(:one)
  end

  test "visiting the index" do
    visit tsconnects_url
    assert_selector "h1", text: "Tsconnects"
  end

  test "creating a Tsconnect" do
    visit tsconnects_url
    click_on "New Tsconnect"

    fill_in "Billing", with: @tsconnect.billing_id
    fill_in "Shop", with: @tsconnect.shop_id
    fill_in "Tenant", with: @tsconnect.tenant_id
    click_on "Create Tsconnect"

    assert_text "Tsconnect was successfully created"
    click_on "Back"
  end

  test "updating a Tsconnect" do
    visit tsconnects_url
    click_on "Edit", match: :first

    fill_in "Billing", with: @tsconnect.billing_id
    fill_in "Shop", with: @tsconnect.shop_id
    fill_in "Tenant", with: @tsconnect.tenant_id
    click_on "Update Tsconnect"

    assert_text "Tsconnect was successfully updated"
    click_on "Back"
  end

  test "destroying a Tsconnect" do
    visit tsconnects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tsconnect was successfully destroyed"
  end
end
