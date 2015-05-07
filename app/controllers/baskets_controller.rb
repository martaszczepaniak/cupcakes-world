class BasketsController < ApplicationController
  def show
    @basket = Basket.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render template: 'baskets/show' }
    end
  end

  def create
    @basket = Basket.create
    render template: 'baskets/show', status: :created
  end

  def destroy
    Basket.find(params[:id]).destroy
    render nothing:  true, status: :no_content
  end
end
