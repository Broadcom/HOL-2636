echo "shutting down Consumption Inteface"
kubectl scale deployment --all --replicas=0 -n svc-cci-ns-domain-c10
kubectl scale statefulset --all --replicas=0 -n svc-cci-ns-domain-c10
kubectl delete pods --field-selector=status.phase='Running' -n sbc-cci-ns-domain-c10
