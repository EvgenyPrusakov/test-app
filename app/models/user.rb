class User < ApplicationRecord

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  has_many :articles
  has_many :comments
  has_many :followers, class_name: 'Follower', foreign_key: :follower_id
  has_many :followings, class_name: 'Follower', foreign_key: :user_id

end
