# `kubectl` Cheat Sheet (Exam-Speed)

## Navigation & selection
```bash
kubectl api-resources | grep -i deploy
kubectl get all -A
kubectl get po -owide
kubectl get deploy,sts,ds
kubectl get po -l app=echo
kubectl get po --field-selector=status.phase=Running
```

## CRUD fast
```bash
kubectl run tmp --image=registry.k8s.io/busybox --restart=Never -it -- sh
kubectl create deploy echo --image=registry.k8s.io/echoserver:1.4
kubectl expose deploy echo --port=80 --target-port=8080
kubectl set image deploy/echo echoserver=registry.k8s.io/echoserver:1.10
kubectl rollout status deploy/echo
kubectl rollout undo deploy/echo
```

## Introspection
```bash
kubectl describe po/echo-xyz
kubectl logs deploy/echo
kubectl top pod,ns,node
kubectl auth can-i get secrets --as system:serviceaccount:default:viewer
```

## YAML on the fly
```bash
kubectl create cm app --from-literal=MODE=prod -oyaml --dry-run=client > cm.yaml
kubectl set resources deploy/echo --limits=cpu=200m,memory=256Mi
kubectl set env deploy/echo MODE=debug --record
kubectl patch deploy echo -p '{"spec":{"replicas":3}}'
kubectl label ns demo pod-security.kubernetes.io/enforce=restricted --overwrite
```

## Debug
```bash
kubectl debug -it po/echo-xyz --image=registry.k8s.io/busybox --target=echo
kubectl exec -it po/echo-xyz -- sh
kubectl port-forward svc/echo 8080:80
kubectl get events --sort-by=.lastTimestamp
```
