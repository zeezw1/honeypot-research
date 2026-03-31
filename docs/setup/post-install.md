## Post-install: accessing the cluster

### Copy kubeconfig to local machine

On the **server**, make kubeconfig readable by your user:
```bash
sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
sudo chown $USER:$USER ~/.kube/config
```

On your **local machine**:
```bash
scp user_name@192.168.1.100:~/.kube/config ~/.kube/config
```

Fix the server address (k3s defaults to `127.0.0.1`):
```bash
sed -i 's/127.0.0.1/192.168.1.100/g' ~/.kube/config
```

After that `kubectl get nodes` and `k9s` should work without any additional configuration.
