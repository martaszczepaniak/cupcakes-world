class Cupcake < ActiveRecord::Base
  has_many :cupcakes_flavours
  has_many :flavours, through: :cupcakes_flavours
  
  has_many :baskets_cupcakes
  has_many :baskets, through: :baskets_cupcakes
end
