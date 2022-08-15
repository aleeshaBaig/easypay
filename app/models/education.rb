class Education < ApplicationRecord
  validates :title, presence: true 
  validates :major, presence: true
  validates :institute, presence: true
  validates :date, presence: true
   

  belongs_to :user
end
