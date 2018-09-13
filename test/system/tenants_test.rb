require "application_system_test_case"

class TenantsTest < ApplicationSystemTestCase
  setup do
    @tenant = tenants(:one)
  end

  test "visiting the index" do
    visit tenants_url
    assert_selector "h1", text: "Tenants"
  end

  test "creating a Tenant" do
    visit tenants_url
    click_on "New Tenant"

    fill_in "Admin", with: @tenant.admin_id
    fill_in "Entry", with: @tenant.entry
    fill_in "First Name", with: @tenant.first_name
    fill_in "Last Name", with: @tenant.last_name
    fill_in "Leaving", with: @tenant.leaving
    fill_in "Parking", with: @tenant.parking
    fill_in "Room No", with: @tenant.room_no
    click_on "Create Tenant"

    assert_text "Tenant was successfully created"
    click_on "Back"
  end

  test "updating a Tenant" do
    visit tenants_url
    click_on "Edit", match: :first

    fill_in "Admin", with: @tenant.admin_id
    fill_in "Entry", with: @tenant.entry
    fill_in "First Name", with: @tenant.first_name
    fill_in "Last Name", with: @tenant.last_name
    fill_in "Leaving", with: @tenant.leaving
    fill_in "Parking", with: @tenant.parking
    fill_in "Room No", with: @tenant.room_no
    click_on "Update Tenant"

    assert_text "Tenant was successfully updated"
    click_on "Back"
  end

  test "destroying a Tenant" do
    visit tenants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tenant was successfully destroyed"
  end
end
