class Bill < ApplicationRecord
validates :amount, presence: true
validates :billing_month, presence: true
 validates :late_fee, presence: true
validates :status, presence: true
validates :due_date, presence: true
validates :issuance_date, presence: true
validates :reading_date, presence: true

enum status: [:paid, :unpaid, :pending]

  belongs_to :user
  belongs_to :utility_bill

  
end
