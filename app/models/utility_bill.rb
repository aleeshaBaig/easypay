class UtilityBill < ApplicationRecord
  has_many :bills
  belongs_to :user
  belongs_to :utility_bill_category
  belongs_to :company
end
