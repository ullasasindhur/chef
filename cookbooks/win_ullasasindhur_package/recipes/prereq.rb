remote_file "#{node['path']}\\#{node['user']}\\Downloads\\#{node['file']}" do
  source 'https://www.7-zip.org/a/7z2201-x64.msi'
  action :create
  not_if { ::File.exist?('C:\Program Files\7-Zip') }
end
