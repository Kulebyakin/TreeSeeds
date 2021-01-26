class AddAvailabilityToSeeds < ActiveRecord::Migration[6.1]
  def change
    add_column :seeds, :availability, :boolean, default: true
  end
end
