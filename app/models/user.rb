class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :owned_situations, class_name: Situation, foreign_key: :owner_id

  has_many :participations
  has_many :situations, through: :participations
end
