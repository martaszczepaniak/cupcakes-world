class Item < ActiveRecord::Base
  belongs_to :basket
  belongs_to :cupcake

  scope :grouped_by_cupcake, -> { joins(:cupcake).group(:name, :price, 'cupcakes.id').order('cupcakes.name').count() }
  scope :price_sum, -> { joins(:cupcake).sum(:price) }
end
