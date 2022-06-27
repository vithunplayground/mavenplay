cat > csr.conf <<EOF
[ req ]
default_bits = 2048
prompt = no
default_md = sha256
req_extensions = req_ext
distinguished_name = dn

[ dn ]
C = IN
ST = Tamil Nadu
L = Coimbatore
O = TestOrg
OU = TestOU
CN = 10.0.2.15

[ req_ext ]
subjectAltName = @alt_names

[ alt_names ]
DNS.1 = vithun1host
DNS.2 = vithun2host
IP.1 = 10.0.2.15
IP.2 = 127.0.0.1

EOF
openssl req -new -key server.key -out server.csr -config csr.conf 
