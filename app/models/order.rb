# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  status      :string
#  memo        :string
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Order < ApplicationRecord
  has_many :order_items
  belongs_to :location
  has_many :products
end
