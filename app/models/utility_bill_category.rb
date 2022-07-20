class UtilityBillCategory < ApplicationRecord
  validates :name, uniqueness: true
    has_many :companies
end
