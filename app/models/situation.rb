class Situation < ActiveRecord::Base
  belongs_to :owner, class_name: User

  has_many :participations
  has_many :users, through: :participations
  has_many :items
  has_many :payments
end
