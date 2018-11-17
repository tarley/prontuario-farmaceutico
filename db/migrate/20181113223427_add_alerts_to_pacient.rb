class AddAlertsToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :alerts, :text
  end
end
