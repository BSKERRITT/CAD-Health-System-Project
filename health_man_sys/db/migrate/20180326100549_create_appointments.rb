class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.integer :doctor
      t.references :patient, foreign_key: true
      t.references :record, foreign_key: true
      t.references :doctor, foreign_key: true

      t.timestamps
    end
  end
end
