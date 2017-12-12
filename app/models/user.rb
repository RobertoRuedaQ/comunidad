class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

before_create -> {self.token = generate_token}
#relaciones
  belongs_to :apartment
  # has_many :user_hobbies
  has_many :hobbies
  # , through: :user_hobbies
  has_many :chats
  has_many :orders
  

  #validacion de registro
  validates :email, :name, :last_name, :gender, :cellphone, :day_of_birth, :apartment_id, presence: true 
  validates :cellphone, numericality: true
  validates :cellphone, length: {is: 10}
  

  private
 
  def generate_token
      loop do
        token = SecureRandom.hex
        return token unless User.exists?({token: token})
      end
  end
  
end
