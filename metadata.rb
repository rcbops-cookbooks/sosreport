name              "sosreport"
maintainer        "Rackspace Hosting, Inc."
maintainer_email  "rcb-deploy@lists.rackspace.com"
license           "Apache 2.0"
description       "Installs the sos package"
long_description  IO.read(File.join(File.dirname(__FILE__), "README.md"))
version           "4.1.3"

%w{ amazon centos debian fedora oracle redhat scientific ubuntu }.each do |os|
  supports os
end

%w{ osops-utils }.each do |dep|
  depends dep
end

recipe "sosreport::default",
  "Installs the sos reporting package"
