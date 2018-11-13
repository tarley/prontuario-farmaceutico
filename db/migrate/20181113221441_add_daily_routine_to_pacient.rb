class AddDailyRoutineToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :daily_routine, :text
  end
end
