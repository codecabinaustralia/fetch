class CreateYellowPages < ActiveRecord::Migration[5.2]
  def change
    create_table :yellow_pages do |t|
      t.string :business_name
      t.string :business_category
      t.string :business_logo
      t.string :business_tagline
      t.string :business_phone
      t.string :business_email
      t.string :business_website
      t.string :business_home_city
      t.string :business_state
      t.string :business_postal_code
      t.text :business_about
      t.text :business_services
      t.text :business_association
      t.text :business_opporating_hours
      t.text :business_products
      t.text :business_brands
      t.text :business_features
      t.text :business_keywords
      t.text :business_review
      t.string :business_review_name
      t.string :business_review_star
      t.text :business_faqs

      t.timestamps
    end
  end
end
