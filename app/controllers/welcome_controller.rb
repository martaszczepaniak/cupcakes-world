class WelcomeController < ApplicationController
  def index
    @bestselling_cupcakes = Cupcake.all.limit(3)
  end
end
