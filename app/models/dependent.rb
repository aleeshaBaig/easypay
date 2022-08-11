class Dependent < ApplicationRecord
  validates :name, presence: true
  validates :relation, presence: true
  validates :phone, presence: true
  validates :date_of_birth, presence: true
  validates :address, presence: true
  validates :cnic, presence: true
  validates :nationality, presence: true
 
belongs_to :user
end
