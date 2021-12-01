# Provisioning

## Requirements

- ansible installation on the device that is doing the provisioning 
- Ubuntu 20.04 and ssh on the device that is being provisioned (host)
- copy `hosts.example` to `hosts` and edit IP address, user and password to give ansible access to the host

## Provisioning
Run `make provision`

or run `make provision-links` to only create desktop links for start/stop services

Afterwards, manually create service account in `deevio-aibox` project 
called `Franken-mill-inspection`.
Then create a JSON key for this service account and download it.
Install authenticate docker by running 

```
sshpass -p deevio ssh deevio@deevio-mill-inspection.local 'docker login \
   -u _json_key --password-stdin https://gcr.io' < ~Downloads/<NAME of JSON key file>
```


## Debug Provisioning
### Run a single role
```
sudo ansible localhost -m include_role -a name=gcp_service --check
```