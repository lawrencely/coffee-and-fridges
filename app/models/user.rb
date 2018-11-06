class User < ApplicationRecord
  has_secure_password
  validates :name, :presence => true, uniqueness: true
  validates :email, :presence => true, uniqueness: true
  validates_length_of :password, :in => 6..20, :on => :create
end
