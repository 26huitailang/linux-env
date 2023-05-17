HOST=192.168.30.10
openssl genrsa -aes256 -out ca-key.pem 4096
openssl req -new -x509 -days 365 -key ca-key.pem -sha256 -subj "/CN=$HOST" -out ca.pem
openssl genrsa -out server-key.pem 4096
