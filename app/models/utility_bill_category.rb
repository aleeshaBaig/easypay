class UtilityBillCategory < ApplicationRecord
     has_many :companies, dependent: :destroy
     has_many :utility_bills, dependent: :destroy
end
