class UtilityBillCategory < ApplicationRecord
     has_many :companies, dependent: :destroy
end
