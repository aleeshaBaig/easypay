class ContactInformation < ApplicationRecord
  validates :mobile, presence: true
  validates :residence_phone, presence: true
  validates :coordinator, presence: true
  validates :personal_email, presence: true
  validates :email_offical, presence: true

  belongs_to :user
end
