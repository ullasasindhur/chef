require 'chefspec'

describe 'win_ullasasindhur_package::install' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'windows').converge(described_recipe) }
  let(:node) { subject.node }

  it 'will windows package install?' do
    expect(chef_run).to install_windows_package(node['package_name'])
  end
end
