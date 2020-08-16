class Punto < ApplicationRecord
  belongs_to :company
  belongs_to :user
  belongs_to :genba
  belongs_to :employee
end
