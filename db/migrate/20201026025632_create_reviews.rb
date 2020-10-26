class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :stars

      t.timestamps
    end
  end
end
