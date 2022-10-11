file "#{node['path']}\\#{node['user']}\\Downloads\\#{node['file']}" do
  action :delete
  only_if { ::File.exist?("#{node['path']}\\#{node['user']}\\Downloads\\#{node['file']}") }
end
