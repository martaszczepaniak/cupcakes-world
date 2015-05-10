class Cupcake < ActiveRecord::Base
  has_many :cupcakes_flavours
  has_many :flavours, through: :cupcakes_flavours
  
  has_many :items
  has_many :baskets, through: :items
end
