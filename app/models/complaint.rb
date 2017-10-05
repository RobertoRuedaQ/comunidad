class Complaint < ApplicationRecord
  belongs_to :apartment, foreign_key: 'apartment_id'

  mount_uploader :imagen, FotoUploader
end
