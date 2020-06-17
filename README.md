# (m)TLS ping-pong

This small Go project is a server to test and demonstrate 2 Kubernetes services talking over mutual TLS.
The 2 deployments run the same ping-pong binary which will reach out to eachother over a HTTPS connection only trusing the same CA with a mTLS connection.
Each deployment also has a "public" endpoint that when called will connect to the other pod and print its certificate info.
