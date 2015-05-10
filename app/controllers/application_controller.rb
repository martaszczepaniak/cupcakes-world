class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  before_filter :set_basket

  def set_basket
    session[:user_uuid] ||= SecureRandom.uuid
    basket = Basket.find_by(user_uuid: session[:user_uuid])
    if basket
      @basket = basket
    else
      @basket = Basket.create(user_uuid: session[:user_uuid])
    end
  end

end
