class Product < ApplicationRecord
mount_uploader :image, FotoUploader
	has_many :order_items
	belongs_to :store

  default_scope { where(active: true) }
end
