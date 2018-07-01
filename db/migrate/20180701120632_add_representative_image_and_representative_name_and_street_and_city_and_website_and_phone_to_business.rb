class AddRepresentativeImageAndRepresentativeNameAndStreetAndCityAndWebsiteAndPhoneToBusiness < ActiveRecord::Migration[5.2]
  def change
    add_column :businesses, :representative_image, :string
    add_column :businesses, :representative_name, :string
    add_column :businesses, :street, :string
    add_column :businesses, :city, :string
    add_column :businesses, :phone, :string
  end
end
