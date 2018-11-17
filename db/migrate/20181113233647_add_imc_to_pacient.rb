class AddImcToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :IMC, :decimal
  end
end
