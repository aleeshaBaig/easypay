class Bill < ApplicationRecord
  belongs_to :user
  belongs_to :utility_bill
end
