class Situation < ActiveRecord::Base
  belongs_to :owner
  has_many :participants, class_name: 'User', through: :participations
end
