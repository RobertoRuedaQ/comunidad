class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :apartment
  has_many :hobbies
  
  validates :email, :name, :last_name, :gender, :cellphone, :day_of_birth, :apartment_id, presence: true 
  validates :cellphone, numericality: true
  validates :cellphone, length: {is: 10}
  
end
