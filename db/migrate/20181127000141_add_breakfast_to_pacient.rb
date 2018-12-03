class AddBreakfastToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :breakfast, :time
  end
end
