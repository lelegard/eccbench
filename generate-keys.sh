#!/usr/bin/env bash
cd $(dirname "$0")
mkdir -p keys
for s in 256 384 521; do
    openssl genpkey -quiet -algorithm EC -pkeyopt ec_paramgen_curve:P-$s \
        -out keys/ecc-p$s-prv.pem -outpubkey keys/ecc-p$s-pub.pem -outform PEM
done
