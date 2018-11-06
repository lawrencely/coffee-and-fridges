class Location < ApplicationRecord
  has_many :orders
  has_many :products
end
