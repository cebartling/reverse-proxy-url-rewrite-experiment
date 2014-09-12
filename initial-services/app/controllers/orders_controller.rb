class OrdersController < ApplicationController

  def index
    respond_to do |format|
      format.html {
        render text: 'Why aren\'t you using the ReSTful API?'
      }
      format.json {
        render json: {order: {id: 423767, order_number: 'A734E890', created_date: DateTime.now.iso}}
      }
    end
  end

end
