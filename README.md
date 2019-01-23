# Wordpress demo with persistent volumes
Demo a wordpress environment with worpress and mysl database running in kubernetes with persistent volumes 
provided by NetApp CLoud Volumes ONTAP

## Pre-Requisistes
* a running instance of Cloud Volumes ONTAP in AWS or Azure
* a running kubernetes cluster in AWS or Azure
* network connectivity between kunbernetes servers and Cloud ONTAP
* trident deployed in the kubernetes cluster
* storage class name: cvo-single - if not present create one or edit yaml-files

## Demo steps
* run prepare-demo
* create wordpress and mysql pods
* show pv and pvc in namespace test
* show mount inside myswl pod: 

```kubectl exec -n test -it wordpress-mysql-565494758-8gbgp -- df -h /var/lib/mysql```
* show created volumes via Cloud Manager or ssh to ONTAP cluster ip

