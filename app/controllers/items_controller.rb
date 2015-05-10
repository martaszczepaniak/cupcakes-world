class ItemsController < ApplicationController
  def create
    @basket = Basket.find(params[:basket_id])
    @basket.cupcakes << Cupcake.find(params[:cupcake_id])
    render template: 'baskets/show', status: :ok
  end

  def destroy
    @basket = Basket.find(params[:basket_id])
    @basket.items.find_by(cupcake_id: params[:id]).destroy
    render template: 'baskets/show', status: :ok
  end
end
