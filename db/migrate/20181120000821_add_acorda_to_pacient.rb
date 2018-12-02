class AddAcordaToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :acorda, :time
  end
end
