class Genba < ApplicationRecord
  belongs_to :company

  has_many :puntos, dependent: :destroy
end
