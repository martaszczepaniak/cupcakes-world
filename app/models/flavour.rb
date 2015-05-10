class Flavour < ActiveRecord::Base
  has_many :cupcakes_flavours
  has_many :cupcakes, through: :cupcakes_flavours
end
