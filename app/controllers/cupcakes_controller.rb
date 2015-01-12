class CupcakesController < ApplicationController
  def index
    @cupcakes = Cupcake.all
  end
end
