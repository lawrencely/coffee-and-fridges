# == Schema Information
#
# Table name: locations_users
#
#  id          :integer          not null, primary key
#  location_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class LocationsUser < ApplicationRecord
  
end
