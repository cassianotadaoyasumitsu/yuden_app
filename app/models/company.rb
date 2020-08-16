class Company < ApplicationRecord
  has_many :genbas, dependent: :destroy
  has_many :puntos, dependent: :destroy
end
