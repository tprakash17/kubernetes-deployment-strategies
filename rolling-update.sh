#!/bin/bash

kubectl scale deployment nginx-deployment --replicas 6
kubectl set image deployment/nginx-deployment nginx=nginx:1.9.1
kubectl rollout status deployment/nginx-deployment
kubectl rollout history deployment/nginx-deployment
kubectl rollout history deployment/nginx-deployment --revision=1
kubectl rollout undo deployment/nginx-deployment --to-revision=1

