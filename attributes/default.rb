
case node["platform"]
  when "ubuntu"
    default["sosreport"]["platform"] = {
      "sosreport_packages" => [ "sos" ],
      "package_overrides" => "-o Dpkg::Options::='--force-confold' -o Dpkg::Options::='--force-confdef'"
    }
  when "fedora", "redhat"
    default["sosreport"]["platform"] = {
      "sosreport_packages" => [ "sos" ],
      "package_overrides" => ""
    }
end
