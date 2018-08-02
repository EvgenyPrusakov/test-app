class User < ApplicationRecord

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  has_many :articles
  has_many :comments
  has_many :follows, class_name: 'Follow', foreign_key: :user_id
  has_many :followings, class_name: 'Follow', foreign_key: :following_id

end
