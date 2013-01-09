maintainer        "Rackspace Hosting, Inc."
license           "Apache 2.0"
description       "Installs the sos package"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.17"

%w{ ubuntu }.each do |os|
  supports os
end

%w{ apt }.each do |dep|
  depends dep
end
