class Record < ApplicationRecord
  belongs_to :patient, :doctor
end
