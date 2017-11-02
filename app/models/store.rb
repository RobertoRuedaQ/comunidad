class Store < ApplicationRecord
  belongs_to :user
  has_many :products

  mount_uploader :image, FotoUploader
end
