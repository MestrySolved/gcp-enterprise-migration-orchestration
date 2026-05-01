# Connectivity testing script for Remote Shell use
echo "Testing internal service communication..."
kubectl exec -it $(kubectl get pods -n $NAMESPACE -l app=my-app -o name | head -n 1) -n $NAMESPACE -- curl -I http://metadata-db-service:5432

echo "Validating HPA Status..."
kubectl get hpa -n $NAMESPACE
