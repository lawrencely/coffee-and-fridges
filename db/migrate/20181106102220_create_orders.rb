class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :status
      t.string :memo
      t.integer :location_id
      t.timestamps
    end
  end
end
