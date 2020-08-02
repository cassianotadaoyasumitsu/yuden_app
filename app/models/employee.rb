class Employee < ApplicationRecord
  has_many_attached :photos
  ROLES = %w(Denkiya Shokucho)

  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true, numericality: { only_integer: true }
  validates :email, presence: true
  validates :role, inclusion: { in: ROLES }
  validates :level_employee, inclusion: { in: 0..5 }
  validates :level_employee, numericality: { only_integer: true }
  validates :started_date, presence: true
end
