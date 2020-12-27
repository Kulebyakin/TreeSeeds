class CreateSeeds < ActiveRecord::Migration[6.1]
  def change
    create_table :seeds do |t|
      t.string :title
      t.string :latin_title
      t.string :description
      t.string :usda
      t.string :image

      t.timestamps
    end
  end
end
