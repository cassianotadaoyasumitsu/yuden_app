class Company < ApplicationRecord
  has_many :genbas, dependent: :destroy
end
