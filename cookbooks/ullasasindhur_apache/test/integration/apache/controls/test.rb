title 'Testing of cookbook ullasasindhur_apache'

input('package_name', value: 'httpd')

control 'apache' do
  impact 0
  title 'Testing the ullasasindhur_apache cookbook'
  desc 'Checking whether package is installed, service in runnning and port is configured correctly'
  describe service(input('package_name')) do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
  describe port(input('port_apache')) do
    it { should be_listening }
  end
end
