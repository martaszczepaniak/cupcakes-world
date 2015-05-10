class CupcakesFlavour < ActiveRecord::Base
  belongs_to :flavour
  belongs_to :cupcake
end
