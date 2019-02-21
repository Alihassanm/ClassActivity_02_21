require 'test_helper'

class PricingFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pricing_form = pricing_forms(:one)
  end

  test "should get index" do
    get pricing_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_pricing_form_url
    assert_response :success
  end

  test "should create pricing_form" do
    assert_difference('PricingForm.count') do
      post pricing_forms_url, params: { pricing_form: { Product_id: @pricing_form.Product_id, Vendor_id: @pricing_form.Vendor_id } }
    end

    assert_redirected_to pricing_form_url(PricingForm.last)
  end

  test "should show pricing_form" do
    get pricing_form_url(@pricing_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_pricing_form_url(@pricing_form)
    assert_response :success
  end

  test "should update pricing_form" do
    patch pricing_form_url(@pricing_form), params: { pricing_form: { Product_id: @pricing_form.Product_id, Vendor_id: @pricing_form.Vendor_id } }
    assert_redirected_to pricing_form_url(@pricing_form)
  end

  test "should destroy pricing_form" do
    assert_difference('PricingForm.count', -1) do
      delete pricing_form_url(@pricing_form)
    end

    assert_redirected_to pricing_forms_url
  end
end
