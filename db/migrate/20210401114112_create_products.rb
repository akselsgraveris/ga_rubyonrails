class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_code
      t.date :date_added
      t.string :product_name
      t.text :product_description
      t.integer :product_count

      t.timestamps null: false
    end
  end
end
