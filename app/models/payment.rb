class Payment < ActiveRecord::Base
  belongs_to :situation

  has_many :items
end
