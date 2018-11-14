# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :locations
  validates :name, :presence => true, uniqueness: true
  validates :email, :presence => true, uniqueness: true
  validates_length_of :password, :in => 6..20, :on => :create
end
