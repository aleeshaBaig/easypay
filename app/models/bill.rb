class Bill < ApplicationRecord
enum status: [:paid, :unpaid, :pending]

  belongs_to :user
  belongs_to :utility_bill

  
end
