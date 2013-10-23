#
# Cookbook Name:: sosreport
# Attributes:: default
#
# Copyright 2012, Rackspace US, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if platform_family?("debian")
  default["sosreport"]["platform"] = {        # node_attribute
    "sosreport_packages" => ["sos"],
    "package_options" =>
      "-o Dpkg::Options::='--force-confold'" +
      " -o Dpkg::Options::='--force-confdef'"
  }
elsif platform_family?("rhel")
  default["sosreport"]["platform"] = {        # node_attribute
    "sosreport_packages" => ["sos"],
    "package_options" => ""
  }
end
