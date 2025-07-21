echo "shutting down Harbor"
kubectl scale deployment --all --replicas=0 -n svc-harbor-domain-c10
kubectl scale statefulset --all --replicas=0 -n svc-harbor-domain-c10
kubectl delete pods --field-selector=status.phase='Failed' -n sbc-cci-ns-domain-c10
