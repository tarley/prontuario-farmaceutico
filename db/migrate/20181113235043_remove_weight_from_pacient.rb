class RemoveWeightFromPacient < ActiveRecord::Migration
  def change
    remove_column :pacients, :weight, :decimal
  end
end
