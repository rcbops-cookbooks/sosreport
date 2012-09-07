## Copyright (C) 2009 Red Hat, Inc., Joey Boggs <jboggs@redhat.com>
## Copyright (C) 2012 Rackspace US, Inc., Justin Shepherd <jshepher@rackspace.com>

### This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.

## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.

## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the Free Software
## Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

import sos.plugintools, os 

class openstack(sos.plugintools.PluginBase):
    """OpenStack related information for Red Hat distributions
    """

    packages = ('openstack-nova-common',
                'openstack-nova-novncproxy',
                'openstack-glance',
                'openstack-utils',
                'openstack-nova-scheduler',
                'openstack-cert',
                'openstack-console',
                'openstack-network',
                'openstack-objectstore',
                'openstack-nova',
                'openstack-dashboard',
                'openstack-keystone',
                'openstack-nova-api',
                'openstack-nova-volume',
                'openstack-nova-compute',
                'openstack-quantum',
                'openstack-swift',
                'openstack-swift-account',
                'openstack-swift-container',
                'openstack-swift-object',
                'openstack-swift-proxy',
                'swift',
                'python-nova',
                'python-glanceclient',
                'python-keystoneclient',
                'python-novaclient',
                'python-openstackclient',
                'python-quantumclient')

    def setup(self):
        # If RHEL or Fedora then invoke script for openstack-status
        if (os.path.isfile('/etc/redhat-release')
            or os.path.isfile('/etc/fedora-release')):
            self.collectExtOutput("/usr/bin/openstack-status")

        # Nova
        self.addCopySpec("/etc/nova/")
        self.addCopySpec("/var/log/nova/")
        self.addCopySpec("/var/lib/nova/")
        self.addCopySpec("/etc/polkit-1/localauthority/50-local.d/50-nova.pkla")
        self.addCopySpec("/etc/sudoers.d/nova")
        self.addCopySpec("/etc/logrotate.d/openstack-nova")

        # Glance
        self.addCopySpec("/etc/glance/")
        self.addCopySpec("/var/log/glance/")
        self.addCopySpec("/etc/logrotate.d/openstack-glance")

        # Keystone
        self.addCopySpec("/etc/keystone/")
        self.addCopySpec("/var/log/keystone/")

        # Quantum
        self.addCopySpec("/etc/quantum/")
        self.addCopySpec("/var/log/quantum/")
