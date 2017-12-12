class Promo < ApplicationRecord
  belongs_to :hobby

  mount_uploader :image, FotoUploader
end
