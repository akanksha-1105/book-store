class CreateAuthers < ActiveRecord::Migration[6.1]
  def change
    create_table :authers do |t|
      t.string :first_name
      t.string :last_name
      t.string :title

      t.timestamps
    end
  end
end
