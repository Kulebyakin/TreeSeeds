class AddConifersToSeeds < ActiveRecord::Migration[6.1]
  def change
    add_column :seeds, :conifers, :boolean, default: false
  end
end
