#!/bin/bash

# create wordpress

# install helm stable wordpress
helm install --name shopee -f /home/shopee/shopee/setting_values.yaml stable/wordpress

echo "Installation wordpress Process"

# environment wordpress
export SERVICE_IP=$(kubectl get svc --namespace default shopee-wordpress --template "{{ range (index .status.loadBalancer.ingress 0) }}{{.}}{{ end }}")

echo "WordPress Admin URL: http://$SERVICE_IP/admin"

echo "Done Up setting wordpress :)"
echo "WordPress URL: http://$SERVICE_IP/"
