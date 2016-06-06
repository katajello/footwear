class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :default_image
      t.string :name
      t.string :style_number
      t.string :reference
      t.integer :cost
      t.integer :msrp

      t.timestamps null: false
    end
  end
end
