class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :customer
      t.references :book_details
      t.string :title
      t.text :body
      t.integer :rating

      t.timestamps
    end
  end
end
