class Doctor < ApplicationRecord
  has_many :patients, :records, dependent: :destroy
  validates :first_name, presence: true
  validates :surname, presence: true
  validates :phone_no, presence: true
  validates :speciality, presence: true
end
