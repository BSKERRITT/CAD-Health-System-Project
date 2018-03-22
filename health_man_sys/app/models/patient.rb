class Patient < ApplicationRecord
  has_and_belongs_to_many :doctor
  has_many :record
  validates :first_name, presence: true
  validates :surname, presence: true
  validates :date_of_birth, presence: true
  validates :address, presence: true
  validates :phone_no, presence: true
end
