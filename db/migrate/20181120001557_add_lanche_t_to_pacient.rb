class AddLancheTToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :lancheT, :time
  end
end
