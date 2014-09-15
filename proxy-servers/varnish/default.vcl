# This is a Varnish 4.x VCL file
vcl 4.0;

backend default {
    .host = "127.0.0.1";
    .port = "3000";
}

backend sinatra {
    .host = "127.0.0.1";
    .port = "4567";
}

backend nodejs {
    .host = "127.0.0.1";
    .port = "5678";
}

# Handle the HTTP request received by the client
sub vcl_recv {
	if (req.url ~ "^/api/v1/products") {
        set req.backend_hint = sinatra;
    } else if (req.url ~ "^/api/v2/products") {
        set req.backend_hint = sinatra;
    } else if (req.url ~ "^/api/v3/products") {
        set req.backend_hint = nodejs;
    } else {
        set req.backend_hint = default;
    }
}

