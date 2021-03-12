class CreateBookDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :book_details do |t|
      t.references :supplier
      t.references :auther
      t.string :title
      t.integer :year_published
      t.decimal :price


      t.timestamps
    end
  end
end
