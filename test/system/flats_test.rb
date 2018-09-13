require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  setup do
    @flat = flats(:one)
  end

  test "visiting the index" do
    visit flats_url
    assert_selector "h1", text: "Flats"
  end

  test "creating a Flat" do
    visit flats_url
    click_on "New Flat"

    fill_in "Bhk Type", with: @flat.bhk_type
    fill_in "Flat No", with: @flat.flat_no
    fill_in "Owner", with: @flat.owner_id
    fill_in "Tenant", with: @flat.tenant_id
    click_on "Create Flat"

    assert_text "Flat was successfully created"
    click_on "Back"
  end

  test "updating a Flat" do
    visit flats_url
    click_on "Edit", match: :first

    fill_in "Bhk Type", with: @flat.bhk_type
    fill_in "Flat No", with: @flat.flat_no
    fill_in "Owner", with: @flat.owner_id
    fill_in "Tenant", with: @flat.tenant_id
    click_on "Update Flat"

    assert_text "Flat was successfully updated"
    click_on "Back"
  end

  test "destroying a Flat" do
    visit flats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flat was successfully destroyed"
  end
end
