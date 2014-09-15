class ProductsController < ApplicationController

  respond_to :json

  def index
    payload = [
      {product: {id: 126762736, name: 'Apple Watch'}},
      {product: {id: 126762867, name: 'Apple AirPort Extreme'}},
      {product: {id: 126762566, name: 'Apple AirPort Express'}},
      {product: {id: 126762419, name: 'Apple iPod Touch 32GB'}},
      {product: {id: 126762098, name: 'Apple iPhone 6 Plus'}},
      {product: {id: 126762433, name: 'Apple iPhone 6'}},
    ]
    respond_to do |format|
      format.json {
        render json: payload
      }
    end
  end

end

