class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   has_one :personal_information      
   has_many :bills, dependent: :destroy
  has_many :utility_bill_categories, dependent: :destroy
  has_many :educations
  has_many :utility_bill, dependent: :destroy
  enum role: [:user, :admin]
end
