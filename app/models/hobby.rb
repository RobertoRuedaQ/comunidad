class Hobby < ApplicationRecord
has_many :users, through: :userhobby,  dependent: :destroy
end
