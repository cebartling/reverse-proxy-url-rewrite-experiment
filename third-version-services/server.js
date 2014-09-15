var express = require('express');
var app = express();
app.enable('trust proxy');

app.get('/api/v1/products', function (req, res) {
    console.log('Handling GET /api/v1/products invocation');
    var payload = [
        {'product': {'id': 126762736, 'name': 'Apple Watch'}},
        {'product': {'id': 126762867, 'name': 'Apple AirPort Extreme'}},
        {'product': {'id': 126762566, 'name': 'Apple AirPort Express'}},
        {'product': {'id': 126762419, 'name': 'Apple iPod Touch 32GB'}},
        {'product': {'id': 126762098, 'name': 'Apple iPhone 6 Plus'}},
        {'product': {'id': 126762433, 'name': 'Apple iPhone 6'}}
    ];
    res.status(200).json(payload);
});



app.get('/api/v3/products', function (req, res) {
    console.log('Handling GET /api/v3/products invocation');
    var payload = {products: [
        {'product': {'id': 126762736, 'name': 'Apple Watch'}},
        {'product': {'id': 126762867, 'name': 'Apple AirPort Extreme'}},
        {'product': {'id': 126762566, 'name': 'Apple AirPort Express'}},
        {'product': {'id': 126762419, 'name': 'Apple iPod Touch 32GB'}},
        {'product': {'id': 126762098, 'name': 'Apple iPhone 6 Plus'}},
        {'product': {'id': 126762433, 'name': 'Apple iPhone 6'}}
    ],
    current_page: 1,
    limit: 10};
    res.status(200).json(payload);
});


app.get('/api/v1/orders', function (req, res) {
    console.log('Handling GET /api/v1/orders invocation');
    var payload = [
        {'product': {'id': 126762736, 'name': 'Apple Watch'}},
        {'product': {'id': 126762867, 'name': 'Apple AirPort Extreme'}},
        {'product': {'id': 126762566, 'name': 'Apple AirPort Express'}},
        {'product': {'id': 126762419, 'name': 'Apple iPod Touch 32GB'}},
        {'product': {'id': 126762098, 'name': 'Apple iPhone 6 Plus'}},
        {'product': {'id': 126762433, 'name': 'Apple iPhone 6'}}
    ];
    res.status(200).json(payload);
});

var server = app.listen(5678, function () {
    console.log('Listening on port %d', server.address().port);
});
