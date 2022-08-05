class PersonalInformation < ApplicationRecord
  validates :image, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :marital_status, presence: true
  validates :religion, presence: true
  validates :cnic, presence: true
  validates :project, presence: true
  validates :department, presence: true
  validates :employment_type, presence: true
  validates :employee_code, presence: true
  validates :designation, presence: true
  validates :date_of_joining, presence: true

mount_uploader :image, ImageUploader
end
