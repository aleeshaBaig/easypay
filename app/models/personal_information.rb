class PersonalInformation < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  enum employment_type: [:Regular, :Permanent]
  enum religion: [:Muslim, :Hindu, :Christian]
  enum marital_status: [:Single, :Married, :Widow, :Divorced]
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
 validates :image, presence: true
 validates :first_name, presence: true
 validates :last_name, presence: true
  belongs_to :user
end
