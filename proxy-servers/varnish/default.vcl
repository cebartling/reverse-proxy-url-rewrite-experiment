# This is a Varnish 4.x VCL file
vcl 4.0;

backend default {
    .host = "127.0.0.1";
    .port = "3000";
    # .probe = {
    #     .url = "/ping";
    #     .timeout   = 1s;
    #     .interval  = 10s;
    #     .window    = 5;
    #     .threshold = 2;
    # }
    # .first_byte_timeout     = 300s;   # How long to wait before we receive a first byte from our backend?
    # .connect_timeout        = 5s;     # How long to wait for a backend connection?
    # .between_bytes_timeout  = 2s;     # How long to wait between bytes received from our backend?
}

# backend sinatra {
#     .host = "127.0.0.1";
#     .port = "4567";
# }

# backend nodejs {
#     .host = "127.0.0.1";
#     .port = "5678";
# }

# Handle the HTTP request received by the client
sub vcl_recv {
	if (req.url ~ "^/api/v1/products") {
        set req.backend_hint = default;
    } else {
        set req.backend_hint = default;
    }
}

