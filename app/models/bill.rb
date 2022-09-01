class Bill < ApplicationRecord
belongs_to :user
belongs_to :utility_bill

validates :amount, presence: true
validates :billing_month, presence: true
validates :late_fee, presence: true
validates :status, presence: true
validates :due_date, presence: true
validates :issuance_date, presence: true
validates :reading_date, presence: true
validates :user_id, presence: true
validates :utility_bill_id, presence: true

enum status: [:Paid, :Unpaid, :Pending]
enum billing_months: [:Jan,:Feb, :Mar, :Apr, :May,:Jun, :Jul, :Aug, :Sep, :Oct, :Nov, :Dec]

  
  
end
