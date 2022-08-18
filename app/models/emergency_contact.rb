class EmergencyContact < ApplicationRecord
  validates :emergency_contact_name, presence: true, uniqueness: { scope: :user_id }
  validates  :emergency_contact_mobile, presence: true,uniqueness: { scope: :user_id }
  validates  :emergency_contact_relation, presence: true
  validates  :permanent_address, presence: true
  validates  :residence_address, presence: true

  belongs_to :user
end
