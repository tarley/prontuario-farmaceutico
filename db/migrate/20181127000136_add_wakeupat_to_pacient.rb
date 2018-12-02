class AddWakeupatToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :wakeupat, :time
  end
end
