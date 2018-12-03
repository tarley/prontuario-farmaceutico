class AddDinnerToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :dinner, :time
  end
end
