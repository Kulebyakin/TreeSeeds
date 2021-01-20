class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :full_name
      t.string :phone
      t.integer :region_id
      t.string :address
      t.integer :zip
      t.json :order
      t.string :status

      t.timestamps
    end
    add_index :orders, :region_id
  end
end
