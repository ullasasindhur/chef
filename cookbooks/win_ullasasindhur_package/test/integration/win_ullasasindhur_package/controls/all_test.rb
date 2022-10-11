title 'win_ullasasindhur_package'

control 'Testing' do
  impact 0.7
  title 'Testing of win_ullasasindhur_package'
  desc 'Testing of win_ullasasindhur_package'

  describe file('C:\Program Files\7-Zip') do
    it { should be_directory }
  end
end
