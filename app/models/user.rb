class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bills, dependent: :destroy
  has_many :utility_bill_categories, dependent: :destroy

  has_many :utility_bill, dependent: :destroy
end
