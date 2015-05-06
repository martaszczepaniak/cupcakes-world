class Cupcake < ActiveRecord::Base
  has_many :cupcakes_flavours
  has_many :flavours, through: :cupcakes_flavours
end
