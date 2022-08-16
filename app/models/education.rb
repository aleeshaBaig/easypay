class Education < ApplicationRecord
  belongs_to :user

  validates :title, presence: true ,uniqueness: { scope: :user_id }
  validates :major, presence: true, uniqueness: { scope: :user_id }
  validates :institute, presence: true
  validates :date, presence: true,uniqueness: { scope: :user_id }
end
