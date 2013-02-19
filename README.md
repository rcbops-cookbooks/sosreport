Description
===========

Installs the sos (https://github.com/sosreport/sosreport) package.

Packages are installed from the OSOps team PPA:

https://launchpad.net/~osops-packaging/+archive/ppa

Requirements
============

Platforms
--------

* CentOS >= 6.3
* Ubuntu >= 12.04

Cookbooks
---------

The following cookbooks are dependencies:

* apt (https://github.com/opscode-cookbooks/apt)

Recipes
=======

default
-------

The default recipe installs the sos package, and drops in openstack.py (which utilizes /usr/bin/openstack-status) when platform is `redhat`

License and Author
==================

Author:: Justin Shepherd (<justin.shepherd@rackspace.com>) 
Author:: Jason Cannavale (<jason.cannavale@rackspace.com>) 
Author:: Ron Pedde (<ron.pedde@rackspace.com>) 
Author:: Joseph Breu (<joseph.breu@rackspace.com>) 
Author:: William Kelly (<william.kelly@rackspace.com>) 
Author:: Darren Birkett (<darren.birkett@rackspace.co.uk>) 
Author:: Evan Callicoat (<evan.callicoat@rackspace.com>) 
Author:: Matt Thompson (<matt.thompson@rackspace.co.uk>) 

Copyright 2012, Rackspace US, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
