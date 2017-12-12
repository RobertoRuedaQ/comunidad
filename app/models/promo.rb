class Promo < ApplicationRecord
  belongs_to :hobbies

  mount_uploader :image, FotoUploader
end
