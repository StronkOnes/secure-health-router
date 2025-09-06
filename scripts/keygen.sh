#!/usr/bin/env bash
mkdir -p ../keys
openssl genpkey -algorithm RSA -out ../keys/server_private.pem -pkeyopt
rsa_keygen_bits:4096
openssl rsa -pubout -in ../keys/server_private.pem -out ../keys/server_public.pem
echo "Generated keys in ../keys/"
