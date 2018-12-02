class AddLancheToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :lanche, :time
  end
end
