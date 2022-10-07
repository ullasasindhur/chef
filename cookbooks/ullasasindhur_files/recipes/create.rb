node['ullasasindhur_files']['list'].each do |file|
  file "/tmp/#{file}" do
    content file
    owner 'root'
    group 'root'
    mode '0755'
    action :create
  end
end
