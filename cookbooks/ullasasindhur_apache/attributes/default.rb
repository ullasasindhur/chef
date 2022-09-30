case node['platform']
when 'centos', 'redhat', 'amazon'
  default['ullasasindhur_apache']['package_name'] = 'httpd'
  default['ullasasindhur_apache']['service_name'] = 'httpd'
  default['ullasasindhur_apache']['document_root'] = '/var/www/html'
  default['ullasasindhur_apache']['port_config'] = '/etc/httpd/conf/httpd.conf'
when 'ubuntu', 'debian'
  default['ullasasindhur_apache']['package_name'] = 'apache2'
  default['ullasasindhur_apache']['service_name'] = 'apache2'
  default['ullasasindhur_apache']['document_root'] = '/var/www/html'
  default['ullasasindhur_apache']['port_config'] = '/etc/apache2/ports.conf'
end

default['ullasasindhur_apache']['port'] = '8080'
