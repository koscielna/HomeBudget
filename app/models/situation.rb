class Situation < ActiveRecord::Base
  belongs_to :user
  has_many :participations
  has_many :users, through: :participations
end
