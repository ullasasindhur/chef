title 'Testing '

control 'apache' do
  impact 0.7
  title 'Testing the ullasasindhur_apache cookbook'
  desc 'Checking whether package is installed, service in runnning and port is configured correctly'
  describe service('apache2') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
  describe port(8080) do
    it { should be_listening }
  end
end