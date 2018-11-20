class AddWeightToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :weight, :numeric
  end
end
