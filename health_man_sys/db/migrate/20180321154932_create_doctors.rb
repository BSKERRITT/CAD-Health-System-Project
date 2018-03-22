class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :surname
      t.string :phone_no
      t.string :speciality

      t.timestamps
    end
  end
end
