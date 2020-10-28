class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews, as: :reviewable
  has_many :surveys
  has_many :user_cities
  has_many :responsess


  # validates :email, :first_name, :last_name, :username, :password, :occupation,
  # :description, :image_url, :score, presence: true

end
