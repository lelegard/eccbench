# ECC Benchmarks

This project runs ECC tests on various CPU's using the OpenSSL cryptographic library.

The tested curves are P-256, P-384 and P-521.

Note: this project is part of a series of cryptographic benchmarks:
- [aesbench](https://github.com/lelegard/aesbench) for AES
- [shabench](https://github.com/lelegard/shabench) for SHA-x hash functions
- [rsabench](https://github.com/lelegard/rsabench) for RSA
- [eccbench](https://github.com/lelegard/rsabench) for ECC (signature only)
- [pqcbench](https://github.com/lelegard/pqcbench) for PQC (ML-KEM, ML-DSA, SLH-DSA)

## Performance results

The performances are displayed and sorted in number of operations: signature generation or verification.

The results are summarized in file [RESULTS.txt](RESULTS.txt).
It is generated using the Python script `analyze.py`.

Two tables are provided:

- Number of operations per second.
- Number of operations per CPU cycle. This metrics is independent of the
  CPU frequency and demonstrates the quality of implementation.
- Number of cycles per operation.

In each table, the ranking of each CPU in the line is added between brackets.

## ECC key pairs generation

The ECC key pairs in this repository are used to run the tests. The same keys are
used on all platforms. These keys were generated using the script `generate-keys.sh`.

To view the key content:

~~~
openssl ec -in keys/ecc-p256-prv.pem -text
openssl ec -in keys/ecc-p256-pub.pem -pubin -text
~~~
