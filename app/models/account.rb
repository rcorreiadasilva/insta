class Account < ApplicationRecord
  has_one_attached :image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :cards
  has_many :likes

  def full_name
    "#{first_name} #{last_name}"
  end

  def total_followers
    0
  end

   def total_following
    0
  end

end
