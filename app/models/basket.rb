class Basket < ActiveRecord::Base
  has_many :items
  has_many :cupcakes, through: :items
end
