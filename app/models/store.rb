class Store < ApplicationRecord
  belongs_to :bussiness
  has_many :products

  mount_uploader :image, FotoUploader
end
