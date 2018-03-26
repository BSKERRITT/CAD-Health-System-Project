# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180326100549) do

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.integer "doctor"
    t.integer "patient_id"
    t.integer "record_id"
    t.integer "doctor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["record_id"], name: "index_appointments_on_record_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "surname"
    t.string "phone_no"
    t.string "speciality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "surname"
    t.date "date_of_birth"
    t.text "address"
    t.string "phone_no"
    t.boolean "medical_card"
    t.string "medical_insurance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.datetime "appointment_time"
    t.string "doctor"
    t.text "observation"
    t.text "previous_condition"
    t.text "treatment"
    t.text "referral_letter"
    t.boolean "blood_test"
    t.text "sick_note"
    t.text "perscription"
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_records_on_patient_id"
  end

end
