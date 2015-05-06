class CupcakesController < ApplicationController
  def index
    @flavours = Flavour.all
    if params[:flavour].present?
      @cupcakes = Cupcake.joins(:flavours).where(flavours: {name: params[:flavour]})
    else
      @cupcakes = Cupcake.all
    end
  end
end
