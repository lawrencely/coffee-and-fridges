class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :short_description
      t.string :price
      t.string :image
      t.integer :location_id
      t.timestamps
    end
  end
end
