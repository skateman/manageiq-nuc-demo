# manageiq-nuc-demo
Demo setup of ManageIQ on Intel NUCs

### Requirements
The demo requires three computers, ideally Intel NUCs for portability and a DHCP/DNS server with the following configuration:

| Role   | Hostname         | IP address    |
|--------|------------------|---------------|
| engine | ovirt-engine.miq | 192.168.20.10 |
| node   | ovirt-1.miq      | 192.168.20.11 |
| node   | ovirt-2.miq      | 192.168.20.12 |

The machines need to have CentOS 7 installed with the master password as the root password.

### Usage
Build and run the docker container with your master password as an argument:
```
docker build --build-arg password=smartvm -t miq-nuc .
docker run -t miq-nuc
```

### Known issues
* Sometimes the storage setup fails, but works after a reboot of the host boxes
* ManageIQ's password is always default
* OpenShift setup doesn't work yet

### Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/skateman/manageiq-nuc-demo.

### License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
