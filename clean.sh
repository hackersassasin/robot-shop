#!/bin/bash
kubectl get pod -n sock-shop | grep Evicted | awk '{print $1}' | xargs kubectl delete pod -n sock-shop
kubectl get pod -n robot-shop | grep Evicted | awk '{print $1}' | xargs kubectl delete pod -n robot-shop
kubectl get pod -n default | grep Evicted | awk '{print $1}' | xargs kubectl delete pod -n default
kubectl get pod -n kubernetes-dashboard | grep Evicted | awk '{print $1}' | xargs kubectl delete pod -n kubernetes-dashboard
