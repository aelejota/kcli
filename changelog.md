# Changelog

## 7.5 (2017-04-23)

- automatically enable root access with the same public keys
- reorganization of the advanced plans to ease their utilization from the UI
- advanced packstack with plan with multiple compute nodes
- take screenshot of vm

## 7.4 (2017-04-20)

- ovirt hosted plans
- use default/hypervisor values when deploying from unknown template
- yakkety and zesty support
- fix to report fixed_ip only when it s really fixed
- allow all parameters to be overriden at client/hypervisor level
- fix inline editing of kcli.yml in docker
- allow to execute a command on a template after it's downloaded

## 6.1 (2017-04-18)

- fix kcli host --switch/enable/update ( and in the UI) within container

## 6.0 (2017-04-17)

- web version to use with kweb
- cloudinit reports in the UI at the end and during provisioning
- custom reportdir for the UI reports
- plan of plans ( so a single file can reference several plans located at different urls)
- kcli snapshot with create/delete/revert/list
- enable/disable hypervisors
- unified configuration class 
- common base class for all providers to serve as a base to additional providers
- manageiq/cloudforms plans working
- common ansible dynamic inventory
- enhance list profiles
- insecure option for quiet ssh connections
- report paths with list --pools to please @rsevilla87
- short option for listing profiles or networks
- switch from click to argparse

IMPORTANT: as part of the refactorization, metadata about the vms are stored differently. So you re advised to run kcli list prior to upgrade so you can
use this information afterwards to run *kcli update --template* or *kcli update --plan*

## 5.24 (2017-04-04)

- Cleaner options
- Removed -l from every section in favor of kcli list
- *--force* option to delete vm when it has existing snapshots

## 5.21 (2017-03-31)

- Create pools in the plans
- Download templates in the plans
- Optional libvirt+Virtualbox Dockerfile ( with limited support)
- Fix commands array for virtualbox cloudinit

## 5.20 (2017-03-27)

- Virtualbox support
- /etc/hosts support
- Update DNS/HOSTS for existing vms
- Cpumodel and cpuflags
- Support for files in plan
- Sharedkeys between vms of a plan
- Define profiles within plans
- Iso full support
- Ansible improvements
- Code refactoring/cleaning for virtualbox
- Bootstrapping fixes
- Fix for serial console in local


## 5.0 (2017-02-07)

- Support for kcli plan --get so plans and directory plans can be shared
- Proxy commands for ssh access and tunnels for consoles
- Added reservedns to autocreate DNS entries in libvirt
- Fix for iso deletion
- Fix pep8 issues
- Fix container volumes when connecting remotely.

## 4.2 (2017-01-20)

- Refactored most stuff to ease commands
- Move kcli create to kcli vm in particular
- Created a kcli container command and applied some container fix when running locally with the API
- Put plan as label for containers


## 3.00 (2016-12-30)

- Docker support
- Deployment of kcli as a container
- Dont put ip information in cloudinit iso when reserveip is set to True ( let libvirt handle all the ip stuff then)
- Helpers for tripleo plans
- Use eth1 instead for undercloud plans
- Allow to specify mac addresses on the plan files
- Fix bugs with multiple macs

## 2.11 (2016-10-20)

- Shared disks support in plan files
- Only download centos upon bootstrapping and provide download option for additional OS
- Full shared disks support
- Evaluate pooltype when bootstrapping in interactive mode
- Better report for networks
- Report volumes in pool with name from default templates as such ( that it, as templates...)
- Stupid handle_response fix for start/stop
- Stupid profile fix


## 2.0 (2016-10-16)

- Ability to create networks within plan file, and treating them first in those cases
- New keyword reserveip at profile level to force dhcp reservation, regardless of whether cloudinit is enabled

## 1.0.52  (2016-10-16)

- Locate correct image when full path is specified
- Skip existing vms when deploying a plan
- Allow dhcp reservation to be made when cloudinit is disabled and an ip is still provided
- Add/delete nics
- Use netcat instead of telnet as it exits cleanly on itself
- Use last found ip
- Make sure hotplug add/delete disk is permanent
- Report last ip in kcli list
- Report error when trying to create a vm with a file template on a lvm pool, or a lvm template on a dir pool
- Allow specifying by path disks to add
- Switch kcli add to kcli disk and add delete disk option there
- Set minimal size for iso on lvm pool
- Refactored the ip code to use dhcp leases instead of buggy InterfaceAddress
- Detect whether to use genisoimage or mkisofs
- Stupid array disk bug


## 1.0.29 (2016-10-08)

- Add/delete network
- Fix for update_memory
- Fix add disk code
- Thanks *efenex* for your suggestion/contribution

## 1.0.25 release (2016-09-29)

- Uci/rhci support, providing plans for RedHat upstream and dowsntream infrastructure projects
- Serial consoles over tcp
- lvm based pool support
- Bootstrap command
- Refactored the nets array so it accepts hashes
- Refactored script1, script2,.... to array based scripts. Good idea *eminguez*
- Exit if pool isn't found
- Optional plan name
- Python3 compatibility
- *Fran* fix

## 1.0.8 (2016-09-20)

- Static dns and search domain support
- Kcli ssh
- Better parsing for ubuntu based templates
- Fix memory update calculation


## 1.0 release (2016-09-12)

- Disk3 and disk4 feature
- Store profile in libvirt
- Update ip for existing vms
- Locate pool for iso and backend volume instead of relying on disk pool
- Allow to separate pools by purpose
- Define volumes just before creating vm
- Store profile in smbios asset

## 0.99.6 (2016-09-11)

Initial public release

- Basic info and console
- Cloning
- Report ips
- Deploy with cloudinit and with params from profile
- Plans
- Ansible Inventory
- Support for scripts in the profile





