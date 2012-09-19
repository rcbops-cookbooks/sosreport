
case node["platform"]
  when "ubuntu"
    default["sosreport"]["platform"] = {        # node_attribute
      "sosreport_packages" => [ "sos" ],
      "package_overrides" => "-o Dpkg::Options::='--force-confold' -o Dpkg::Options::='--force-confdef'"
    }
  when "fedora", "redhat", "centos"
    default["sosreport"]["platform"] = {        # node_attribute
      "sosreport_packages" => [ "sos" ],
      "package_overrides" => ""
    }
end
