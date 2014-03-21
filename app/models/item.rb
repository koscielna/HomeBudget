class Item < ActiveRecord::Base
  belongs_to :situation
  belongs_to :user
  belongs_to :payment
end
