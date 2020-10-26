class Restaurant < ApplicationRecord
  has_many :reviews
  has_one :address
end
