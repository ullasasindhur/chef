require 'chefspec'

describe 'win_ullasasindhur_package::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'windows').converge(described_recipe) }

  it 'are recipes included?' do
    expect(chef_run).to include_recipe('win_ullasasindhur_package::prereq')
    expect(chef_run).to include_recipe('win_ullasasindhur_package::install')
    expect(chef_run).to include_recipe('win_ullasasindhur_package::cleanup')
  end
end
