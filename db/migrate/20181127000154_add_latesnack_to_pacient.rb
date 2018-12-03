class AddLatesnackToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :latesnack, :time
  end
end
