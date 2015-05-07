class Item < ActiveRecord::Base
  belongs_to :basket
  belongs_to :cupcake
end
