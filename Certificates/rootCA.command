openssl req -x509 \
            -sha256 -days 356 \
            -nodes \
            -newkey rsa:2048 \
            -subj "/CN=vithun.com/C=IN/L=Coimbatore" \
            -keyout rootCA.key -out rootCA.crt  
