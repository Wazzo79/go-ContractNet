#!/bin/bash -x

# creates the necessary docker images to run testrunner.sh locally

docker build --tag="ContractNet/cppjit-testrunner" docker-cppjit
docker build --tag="ContractNet/python-testrunner" docker-python
docker build --tag="ContractNet/go-testrunner" docker-go
