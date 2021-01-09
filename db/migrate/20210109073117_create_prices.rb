class CreatePrices < ActiveRecord::Migration[6.1]
  def change
    create_table :prices do |t|
      t.integer :seed_id
      t.integer :amount
      t.string :unit
      t.integer :price

      t.timestamps
    end
  end
end
