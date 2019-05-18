#!/bin/bash

argument=$1

deployment="shopee-wordpress"
# schaled process
kubectl scale --replicas=$argument deploy/$deployment

#Information Only
echo ""
echo "Scaled ${deployment} to $argument"
echo ""

kubectl get deployment $deployment
