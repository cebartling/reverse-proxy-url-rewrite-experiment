class ProductsController < ApplicationController

  def index
    respond_to do |format|
      format.html {
        render text: 'Why aren\'t you using the ReSTful API?'
      }
      format.json {
        render json: {product: {id: 126762736, name: 'Apple Watch'}}
      }
    end
  end

end

