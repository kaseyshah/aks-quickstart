!AKS In Action - Demo - AKS quickstart
!cluster aks01
az group create -n rsg-aks01 -l eastus
az aks create -g rsg-aks01 -n aks01 --generate-ssh-keys --node-count 1
az aks get-credentials -g rsg-aks01 -n aks01
az aks list
kubectl get nodes
kubectl apply -f https://raw.githubusercontent.com/kaseyshah/aks-quickstart/master/azure-vote.yaml
kubectl get pods
kubectl get service azure-vote-front --watch
curl
az aks browse --g rsg-aks01 -n aks01
az aks scale -g rsg-aks01 -n aks01 --node-count 2
kubectl get nodes
kubectl scale --replicas=3 -f azure-vote.yaml 
kubectl get pods
kubectl autoscale deployment azure-vote-front --min=2 --max=10 
kubectl get pods
!
!cluster aks02
az group create -n rsg-aks02 -l eastus
az aks create -g rsg-aks01 -n aks02 --generate-ssh-keys --node-count 1
az aks get-credentials -g rsg-aks02 -n aks02
az aks list
kubectl get nodes
kubectl apply -f https://raw.githubusercontent.com/kaseyshah/aks-quickstart/master/azure-vote.yaml
kubectl get pods
kubectl get service azure-vote-front --watch
curl
az aks browse --g rsg-aks02 -n aks02
az aks scale -g rsg-aks02 -n aks02 --node-count 2
kubectl get nodes
kubectl scale --replicas=3 -f azure-vote.yaml 
kubectl get pods
kubectl autoscale deployment azure-vote-front --min=2 --max=10 
kubectl get pods
!
