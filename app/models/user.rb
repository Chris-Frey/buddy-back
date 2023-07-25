class User < ApplicationRecord
  has_many :user_activities
  has_many :activities, inverse_of: 'creator'
  has_many :activities, through: :user_activities
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist
  
  validates :username, :name, :photo, :bio, :gender_identity, presence: true
end
