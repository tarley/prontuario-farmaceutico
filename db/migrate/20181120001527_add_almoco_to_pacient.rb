class AddAlmocoToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :almoco, :time
  end
end
