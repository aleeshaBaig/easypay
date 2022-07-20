class Company < ApplicationRecord
  validates :name, uniqueness: true
  belongs_to :utility_bill_category
end
