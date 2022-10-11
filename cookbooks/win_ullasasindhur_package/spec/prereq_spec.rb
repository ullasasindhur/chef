require 'chefspec'

describe 'win_ullasasindhur_package::prereq' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'windows').converge(described_recipe) }
  let(:node) { subject.node }

  it 'will file download?' do
    expect(chef_run).to create_remote_file("#{node['path']}\\#{node['user']}\\Downloads\\#{node['file']}")
  end
end
