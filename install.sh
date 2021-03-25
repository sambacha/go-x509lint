#!/bin/bash
echo "init gitsubmodule..."
git submodule init
git submodule sync --recursive
echo "preparing build..."
cp x509lint/asn1_time.c .
cp x509lint/asn1_time.h .
cp x509lint/checks.c .
cp x509lint/checks.h .
cp x509lint/messages.c .
cp x509lint/messages.h .
echo "executing make..."
make
echo "executing golang install.."
go install
echo "Install Complete"
