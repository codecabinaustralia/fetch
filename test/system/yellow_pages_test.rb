require "application_system_test_case"

class YellowPagesTest < ApplicationSystemTestCase
  setup do
    @yellow_page = yellow_pages(:one)
  end

  test "visiting the index" do
    visit yellow_pages_url
    assert_selector "h1", text: "Yellow Pages"
  end

  test "creating a Yellow page" do
    visit yellow_pages_url
    click_on "New Yellow Page"

    fill_in "Business About", with: @yellow_page.business_about
    fill_in "Business Association", with: @yellow_page.business_association
    fill_in "Business Brands", with: @yellow_page.business_brands
    fill_in "Business Category", with: @yellow_page.business_category
    fill_in "Business Email", with: @yellow_page.business_email
    fill_in "Business Faqs", with: @yellow_page.business_faqs
    fill_in "Business Features", with: @yellow_page.business_features
    fill_in "Business Home City", with: @yellow_page.business_home_city
    fill_in "Business Keywords", with: @yellow_page.business_keywords
    fill_in "Business Logo", with: @yellow_page.business_logo
    fill_in "Business Name", with: @yellow_page.business_name
    fill_in "Business Opporating Hours", with: @yellow_page.business_opporating_hours
    fill_in "Business Phone", with: @yellow_page.business_phone
    fill_in "Business Postal Code", with: @yellow_page.business_postal_code
    fill_in "Business Products", with: @yellow_page.business_products
    fill_in "Business Review", with: @yellow_page.business_review
    fill_in "Business Review Name", with: @yellow_page.business_review_name
    fill_in "Business Review Star", with: @yellow_page.business_review_star
    fill_in "Business Services", with: @yellow_page.business_services
    fill_in "Business State", with: @yellow_page.business_state
    fill_in "Business Tagline", with: @yellow_page.business_tagline
    fill_in "Business Website", with: @yellow_page.business_website
    click_on "Create Yellow page"

    assert_text "Yellow page was successfully created"
    click_on "Back"
  end

  test "updating a Yellow page" do
    visit yellow_pages_url
    click_on "Edit", match: :first

    fill_in "Business About", with: @yellow_page.business_about
    fill_in "Business Association", with: @yellow_page.business_association
    fill_in "Business Brands", with: @yellow_page.business_brands
    fill_in "Business Category", with: @yellow_page.business_category
    fill_in "Business Email", with: @yellow_page.business_email
    fill_in "Business Faqs", with: @yellow_page.business_faqs
    fill_in "Business Features", with: @yellow_page.business_features
    fill_in "Business Home City", with: @yellow_page.business_home_city
    fill_in "Business Keywords", with: @yellow_page.business_keywords
    fill_in "Business Logo", with: @yellow_page.business_logo
    fill_in "Business Name", with: @yellow_page.business_name
    fill_in "Business Opporating Hours", with: @yellow_page.business_opporating_hours
    fill_in "Business Phone", with: @yellow_page.business_phone
    fill_in "Business Postal Code", with: @yellow_page.business_postal_code
    fill_in "Business Products", with: @yellow_page.business_products
    fill_in "Business Review", with: @yellow_page.business_review
    fill_in "Business Review Name", with: @yellow_page.business_review_name
    fill_in "Business Review Star", with: @yellow_page.business_review_star
    fill_in "Business Services", with: @yellow_page.business_services
    fill_in "Business State", with: @yellow_page.business_state
    fill_in "Business Tagline", with: @yellow_page.business_tagline
    fill_in "Business Website", with: @yellow_page.business_website
    click_on "Update Yellow page"

    assert_text "Yellow page was successfully updated"
    click_on "Back"
  end

  test "destroying a Yellow page" do
    visit yellow_pages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yellow page was successfully destroyed"
  end
end
