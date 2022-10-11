require 'chefspec'

describe 'win_ullasasindhur_package::cleanup' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'windows').converge(described_recipe) }
  let(:node) { subject.node }

  it 'will file delete?' do
    expect(chef_run).to delete_file("#{node['path']}\\#{node['user']}\\Downloads\\#{node['file']}")
  end
end
