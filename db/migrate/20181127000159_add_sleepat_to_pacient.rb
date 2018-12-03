class AddSleepatToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :sleepat, :time
  end
end
