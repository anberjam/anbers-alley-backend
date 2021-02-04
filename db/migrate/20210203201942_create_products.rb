class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :description
      t.string :how_to_use
      t.float :price
      t.string :picture
      t.string :skin_type
      t.string :product_type

      t.timestamps
    end
  end
end
