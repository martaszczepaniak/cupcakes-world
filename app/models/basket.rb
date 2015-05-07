class Basket < ActiveRecord::Base
  has_many :baskets_cupcakes
  has_many :cupcakes, through: :baskets_cupcakes
end
