class AddRestaurantRefToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :addresses, :restaurant, null: false, foreign_key: true
  end
end
