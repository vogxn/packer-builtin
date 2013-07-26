## BuiltIn customized for Apache CloudStack testing

This is a packer template for building a sample builtin based on CentOS 6.4
(minimal). The purpose of this is to illustrate building templates on your own.

The template here is used in test environments in place of the regular CentOS
5.6 (builtin) that comes by default with CloudStack. Test environments that run
integration tests based on marvin often require custom packages within the
guest to verify certain functionalities provided by CS.

For eg: HAProxy tests for webserver loadbalancing requires the httpd service to
be up and functional.

### Requirements
Needs packer, vagrant and virtualbox/vmware-fusion. You can also build this on
Amazon EC2

### Customize
change the script in base.sh/script.sh etc

### Build

$ packer build builtin.json
$ vagrant add builtin.box builtin
$ vagrant up
$ ./build.sh (to build vhd/qcow2/ova)

### Usage

Replace the templates.sql before you install cloudstack with the url to this
image. Then run cloudstack-setup-databases.
