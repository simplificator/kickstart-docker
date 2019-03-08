#!/usr/bin/env bash

SEC=5
EXIT_CODE=77
echo running..
echo waiting $SEC seconds
sleep $SEC
echo will exit with $EXIT_CODE
exit $EXIT_CODE
