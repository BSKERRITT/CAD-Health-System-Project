class Patient < ApplicationRecord
  has_and_belongs_to_many :doctors
  has_many :records
  has_and_belongs_to_many :appointments
  validates :first_name, presence: true
  validates :surname, presence: true
  validates :date_of_birth, presence: true
  validates :address, presence: true
  validates :phone_no, presence: true
end
