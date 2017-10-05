class Vehicle < ApplicationRecord
  belongs_to :apartment
  #validates :plate, format: {with: "^[a-zA-Z]{3}\\d{3}$"}
  #validates :plate, format: {with: "^[a-zA-Z]{3}\\d{2}[a-zA-Z]{1}$"}
end
