require 'chefspec'

describe 'ullasasindhur_apache::install' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '20.04').converge(described_recipe) }
  # let(:package_name) { node['ullasasindhur_apache']['package_name'] }
  # let(:service_name) { node['ullasasindhur_apache']['service_name'] }
  context 'Package' do
    it 'will package install?' do
      expect(chef_run).to install_package('apache2')
    end
    it 'will service start?' do
      expect(chef_run).to start_service('apache2')
    end
  end
  context 'template files' do
    it 'will index file create?' do
      expect(chef_run).to create_template('/var/www/html/index.html').with(
          owner: 'root',
          group: 'root',
          mode: '0755')
    end
    it 'will ports conf file create?' do
      expect(chef_run).to create_template('/etc/apache2/ports.conf').with(
          owner: 'root',
          group: 'root',
          mode: '0755')
    end
  end
  context 'restart service' do
    it 'will service restart?' do
      expect(chef_run).to restart_service('apache2')
    end
  end
end
