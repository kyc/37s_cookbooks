default.nginx[:version] = "0.8.29-1"
default.nginx[:architecture] = kernel[:machine] == "x86_64" ? "amd64" : "i386"
default.nginx[:dir]     = "/etc/nginx"
default.nginx[:log_dir] = "/var/log/nginx"
default.nginx[:user]    = "www-data"
default.nginx[:group]   = "www-data"
default.nginx[:binary]  = "/usr/sbin/nginx"

default.nginx[:gzip] = "on"
default.nginx[:gzip_http_version] = "1.0"
default.nginx[:gzip_comp_level] = "2"
default.nginx[:gzip_proxied] = "any"
default.nginx[:gzip_types] = [ "text/plain", "text/html", "text/css", "application/javascript", "application/x-javascript", "text/xml", "application/xml", "application/xml+rss", "text/javascript" ]

default.nginx[:keepalive] = "on"
default.nginx[:keepalive_timeout] = 8

default.nginx[:worker_processes] = 6
default.nginx[:worker_connections] = 2048
default.nginx[:server_names_hash_bucket_size] = 128

default.nginx[:expires][:enabled] = true
default.nginx[:expires][:regex] = '^/(javascripts|stylesheets|images|sprockets)[/\.]'
default.nginx[:expires][:time] = "max"

default.nginx[:extras] = ['headers']
default.nginx[:helpers] = ['expires', 'lb_filter']
