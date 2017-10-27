class Apartment < ApplicationRecord
  belongs_to :werehouse, optional: true
  has_many :users
  has_many :children
  has_many :complaints
  has_many :pets
  has_many :vehicles
  has_many :werehouses
  has_many :orders

  def apto
  	apto = "#{number}-""#{block}"
  end
end
