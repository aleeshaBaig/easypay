class EmergencyContact < ApplicationRecord
  validates :emergency_contact_name, presence: true

  belongs_to :user
end
