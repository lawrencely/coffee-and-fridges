# == Schema Information
#
# Table name: products
#
#  id                :integer          not null, primary key
#  name              :string
#  description       :text
#  short_description :text
#  price             :string
#  image             :string
#  location_id       :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Product < ApplicationRecord
  has_and_belongs_to_many :locations 
end
