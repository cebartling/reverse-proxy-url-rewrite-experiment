class OrdersController < ApplicationController

  respond_to :json

  def index
    payload = [
      {order: {id: 423767, order_number: 'A734E890', created_date: DateTime.now.to_s}},
      {order: {id: 423768, order_number: 'A734E666', created_date: DateTime.now.to_s}},
      {order: {id: 423769, order_number: 'A734E789', created_date: DateTime.now.to_s}},
      {order: {id: 423770, order_number: 'A734E877', created_date: DateTime.now.to_s}},
      {order: {id: 423771, order_number: 'A734E566', created_date: DateTime.now.to_s}}
    ]
    respond_to do |format|
      format.json {
        render json: payload
      }
    end
  end

end
