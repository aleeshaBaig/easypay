class Dependent < ApplicationRecord
  validates :name, presence: true,uniqueness: { scope: :user_id }
  validates :relation, presence: true,uniqueness: { scope: :user_id }
  validates :phone, presence: true,uniqueness: { scope: :user_id }
  validates :date_of_birth, presence: true
  validates :address, presence: true
  validates :cnic, presence: true,uniqueness: { scope: :user_id }
  validates :nationality, presence: true
 
belongs_to :user
end
