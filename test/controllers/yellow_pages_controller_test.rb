require 'test_helper'

class YellowPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yellow_page = yellow_pages(:one)
  end

  test "should get index" do
    get yellow_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_yellow_page_url
    assert_response :success
  end

  test "should create yellow_page" do
    assert_difference('YellowPage.count') do
      post yellow_pages_url, params: { yellow_page: { business_about: @yellow_page.business_about, business_association: @yellow_page.business_association, business_brands: @yellow_page.business_brands, business_category: @yellow_page.business_category, business_email: @yellow_page.business_email, business_faqs: @yellow_page.business_faqs, business_features: @yellow_page.business_features, business_home_city: @yellow_page.business_home_city, business_keywords: @yellow_page.business_keywords, business_logo: @yellow_page.business_logo, business_name: @yellow_page.business_name, business_opporating_hours: @yellow_page.business_opporating_hours, business_phone: @yellow_page.business_phone, business_postal_code: @yellow_page.business_postal_code, business_products: @yellow_page.business_products, business_review: @yellow_page.business_review, business_review_name: @yellow_page.business_review_name, business_review_star: @yellow_page.business_review_star, business_services: @yellow_page.business_services, business_state: @yellow_page.business_state, business_tagline: @yellow_page.business_tagline, business_website: @yellow_page.business_website } }
    end

    assert_redirected_to yellow_page_url(YellowPage.last)
  end

  test "should show yellow_page" do
    get yellow_page_url(@yellow_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_yellow_page_url(@yellow_page)
    assert_response :success
  end

  test "should update yellow_page" do
    patch yellow_page_url(@yellow_page), params: { yellow_page: { business_about: @yellow_page.business_about, business_association: @yellow_page.business_association, business_brands: @yellow_page.business_brands, business_category: @yellow_page.business_category, business_email: @yellow_page.business_email, business_faqs: @yellow_page.business_faqs, business_features: @yellow_page.business_features, business_home_city: @yellow_page.business_home_city, business_keywords: @yellow_page.business_keywords, business_logo: @yellow_page.business_logo, business_name: @yellow_page.business_name, business_opporating_hours: @yellow_page.business_opporating_hours, business_phone: @yellow_page.business_phone, business_postal_code: @yellow_page.business_postal_code, business_products: @yellow_page.business_products, business_review: @yellow_page.business_review, business_review_name: @yellow_page.business_review_name, business_review_star: @yellow_page.business_review_star, business_services: @yellow_page.business_services, business_state: @yellow_page.business_state, business_tagline: @yellow_page.business_tagline, business_website: @yellow_page.business_website } }
    assert_redirected_to yellow_page_url(@yellow_page)
  end

  test "should destroy yellow_page" do
    assert_difference('YellowPage.count', -1) do
      delete yellow_page_url(@yellow_page)
    end

    assert_redirected_to yellow_pages_url
  end
end
