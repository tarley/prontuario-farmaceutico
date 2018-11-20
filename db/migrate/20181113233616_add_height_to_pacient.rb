class AddHeightToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :height, :decimal
  end
end
