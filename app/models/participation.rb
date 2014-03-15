class Participation < ActiveRecord::Base
  belongs_to :participant, class_name: 'User', foreign_key: 'user_id'
  belongs_to :participated_situation, class_name: 'Situation', foreign_key: 'situation_id'
end
