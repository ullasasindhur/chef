windows_package "#{node['package_name']}" do
  source "#{node['path']}\\#{node['user']}\\Downloads\\#{node['file']}"
  action :install
  installer_type :msi
  not_if { ::File.exist?('C:\Program Files\7-Zip') }
end
