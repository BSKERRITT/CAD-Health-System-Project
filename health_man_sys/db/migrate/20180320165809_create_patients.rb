class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :surname
      t.date :date_of_birth
      t.text :address
      t.string :phone_no
      t.boolean :medical_card
      t.string :medical_insurance
      t.references :record, index: true
      t.references :doctor, index: true

      t.timestamps
    end
    add_foreign_key :patients, :records
    add_foreign_key :patients, :doctors
  end
end
