#!/bin/bash
git submodule init
git submodule sync --recursive
cp x509lint/asn1_time.c .
cp x509lint/asn1_time.h .
cp x509lint/checks.c .
cp x509lint/checks.h .
cp x509lint/messages.c .
cp x509lint/messages.h .
