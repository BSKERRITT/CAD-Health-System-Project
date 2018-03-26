class Record < ApplicationRecord
  belongs_to :patient
  has_and_belongs_to_many :doctors
  has_one :appointment
end
