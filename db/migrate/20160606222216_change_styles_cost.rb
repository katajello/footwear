class ChangeStylesCost < ActiveRecord::Migration
  def change
    change_column :styles, :cost, :float
    change_column :styles, :msrp, :float

  end
end
