class Doctor < ApplicationRecord
  has_many :patients, dependent: :destroy
  has_many :records, through: :patients, dependent: :destroy
  has_many :appointments
  validates :first_name, presence: true
  validates :surname, presence: true
  validates :phone_no, presence: true
  validates :speciality, presence: true
end
