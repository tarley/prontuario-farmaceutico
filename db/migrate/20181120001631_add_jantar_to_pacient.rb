class AddJantarToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :jantar, :time
  end
end
