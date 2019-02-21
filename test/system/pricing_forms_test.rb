require "application_system_test_case"

class PricingFormsTest < ApplicationSystemTestCase
  setup do
    @pricing_form = pricing_forms(:one)
  end

  test "visiting the index" do
    visit pricing_forms_url
    assert_selector "h1", text: "Pricing Forms"
  end

  test "creating a Pricing form" do
    visit pricing_forms_url
    click_on "New Pricing Form"

    fill_in "Product", with: @pricing_form.Product_id
    fill_in "Vendor", with: @pricing_form.Vendor_id
    click_on "Create Pricing form"

    assert_text "Pricing form was successfully created"
    click_on "Back"
  end

  test "updating a Pricing form" do
    visit pricing_forms_url
    click_on "Edit", match: :first

    fill_in "Product", with: @pricing_form.Product_id
    fill_in "Vendor", with: @pricing_form.Vendor_id
    click_on "Update Pricing form"

    assert_text "Pricing form was successfully updated"
    click_on "Back"
  end

  test "destroying a Pricing form" do
    visit pricing_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pricing form was successfully destroyed"
  end
end
