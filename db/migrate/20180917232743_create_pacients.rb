class CreatePacients < ActiveRecord::Migration
  def change
    create_table :pacients do |t|
      t.string :name
      t.string :place_attendence
      t.date :birth_date
      t.integer :years_study
      t.integer :genre
      t.integer :marital_status
      t.string :phone
      t.string :address
      t.string :services_professional
      t.text :reason_meeting
      t.string :cpf
      t.text :physical_activity
      t.text :cigarette
      t.text :alcoholic_beverages


      
      t.references :profession, index: true, foreign_key: true
      t.references :service_access, index: true, foreign_key: true
      t.references :ub, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
