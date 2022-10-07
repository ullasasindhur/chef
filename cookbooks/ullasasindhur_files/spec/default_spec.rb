require 'chefspec'

describe 'ullasasindhur_files::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '20.04').converge(described_recipe) }
  it 'is create recipe included?' do
    expect(chef_run).to include_recipe('ullasasindhur_files::create')
  end
end
