class AddLunchToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :lunch, :time
  end
end
