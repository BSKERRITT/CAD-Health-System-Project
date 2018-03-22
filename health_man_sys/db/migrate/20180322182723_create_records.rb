class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.datetime :appointment_time
      t.string :doctor
      t.text :observation
      t.text :previous_condition
      t.text :treatment
      t.text :referral_letter
      t.boolean :blood_test
      t.text :sick_note
      t.text :perscription
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
