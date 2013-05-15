
case node["platform_family"]
  when "debian"
    default["sosreport"]["platform"] = {        # node_attribute
      "sosreport_packages" => [ "sos" ],
      "package_overrides" => "-o Dpkg::Options::='--force-confold' -o Dpkg::Options::='--force-confdef'"
    }
  when "rhel"
    default["sosreport"]["platform"] = {        # node_attribute
      "sosreport_packages" => [ "sos" ],
      "package_overrides" => ""
    }
end
