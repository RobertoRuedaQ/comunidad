class Advertisement < ApplicationRecord
  belongs_to :user

  mount_uploader :imagen, FotoUploader
end
