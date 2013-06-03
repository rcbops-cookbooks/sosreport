#
# Cookbook Name:: sosreport_test
# Recipe:: default
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

require_relative "./support/helpers"

describe_recipe "sosreport_test::default" do
  include SosReportTestHelpers

  it "installs the sos package" do
    node["sosreport"]["platform"]["sosreport_packages"].each do |pkg|
      package(pkg).must_be_installed
    end
  end

  it "create an init config default file on redhat platform" do
    script = file("/usr/lib/python2.6/site-packages/sos/plugins/openstack.py")

    if node.platform?("redhat")
      script.must_exist
    else
      script.wont_exist
    end

  end
end
