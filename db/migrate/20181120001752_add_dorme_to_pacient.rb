class AddDormeToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :dorme, :time
  end
end
