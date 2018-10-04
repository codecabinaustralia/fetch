class AddBusinessLinkToYellowPages < ActiveRecord::Migration[5.2]
  def change
    add_column :yellow_pages, :business_link, :string
  end
end
