class CreateVarients < ActiveRecord::Migration
  def change
    create_table :varients do |t|
      t.string :color
      t.string :material
      t.string :image
      t.references :style, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
