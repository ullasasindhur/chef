require 'chefspec'

describe 'ullasasindhur_files::create' do
  let(:node) { subject.node }
  let(:file_list) { node['ullasasindhur_files']['list'] }
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '20.04').converge(described_recipe) }
  it 'will files create?' do
    file_list.each do |file|
      expect(chef_run).to create_file("/tmp/#{file}")
    end
  end
end
