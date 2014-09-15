require 'sinatra'
require 'json'


get '/' do
  'Hey!  We are up and running.'
end

get '/api/v1/products' do
  content_type :json
  [
    {product: {id: 126762736, name: 'Apple Watch'}},
    {product: {id: 126762867, name: 'Apple AirPort Extreme'}},
    {product: {id: 126762566, name: 'Apple AirPort Express'}},
    {product: {id: 126762419, name: 'Apple iPod Touch 32GB'}},
    {product: {id: 126762098, name: 'Apple iPhone 6 Plus'}},
    {product: {id: 126762433, name: 'Apple iPhone 6'}},
  ].to_json
end


get '/api/v2/products' do
  content_type :json
  [
    {product: {id: 'ABD898886', name: 'Apple Watch'}},
    {product: {id: 'ABD898885', name: 'Apple AirPort Extreme'}},
    {product: {id: 'ABD898884', name: 'Apple AirPort Express'}},
    {product: {id: 'ABD898883', name: 'Apple iPod Touch 32GB'}},
    {product: {id: 'ABD898882', name: 'Apple iPhone 6 Plus'}},
    {product: {id: 'ABD898881', name: 'Apple iPhone 6'}},
  ].to_json
end

get '/api/v1/orders' do
  content_type :json
  [
    {order: {id: 423767, order_number: 'A734E890', created_date: DateTime.now.to_s}},
    {order: {id: 423768, order_number: 'A734E666', created_date: DateTime.now.to_s}},
    {order: {id: 423769, order_number: 'A734E789', created_date: DateTime.now.to_s}},
    {order: {id: 423770, order_number: 'A734E877', created_date: DateTime.now.to_s}},
    {order: {id: 423771, order_number: 'A734E566', created_date: DateTime.now.to_s}}
  ].to_json  
end
