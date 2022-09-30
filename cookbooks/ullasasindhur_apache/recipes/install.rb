package node['ullasasindhur_apache']['package_name'] do
  action :install
end

service node['ullasasindhur_apache']['service_name'] do
  action [:start, :enable]
end

template "#{node['ullasasindhur_apache']['document_root']}/index.html" do
  source 'index.html.erb'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

template node['ullasasindhur_apache']['port_config'] do
  source 'ports.conf.erb'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

service node['ullasasindhur_apache']['service_name'] do
  action :restart
end
