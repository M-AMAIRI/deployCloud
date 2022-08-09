#!/bin/bash
echo "--------------------- welcome----------------------------"

echo "--------------------- clean deploy----------------------------"
kubectl get svc
kubectl delete svc service-api-clusterip
kubectl delete svc service-magiewebapp-clusterip
kubectl delete svc service-magiewebapp-loadbalancer
kubectl get svc

kubectl get deploy
kubectl delete deploy deployment-magiewebapp
kubectl delete deploy api
kubectl get deploy

echo "--------------------- End clean deploy----------------------------"

echo "--------------------- deploy WebApi & Api & SVC----------------------------"

kubectl create -f https://raw.githubusercontent.com/M-AMAIRI/deployCloud/main/deploy-api.yaml
kubectl create -f https://raw.githubusercontent.com/M-AMAIRI/deployCloud/main/deploy-webapp.yaml

kubectl get svc
kubectl get deploy
kubectl get pods

echo "--------------------- End deploy WebApi & Api & SVC----------------------------"
