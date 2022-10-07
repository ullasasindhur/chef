# copyright: 2018, The Authors

title 'ullasasindhur_files testing'

# you add controls here
control 'files recipe' do # A unique ID for this control
  impact 0.7 # The criticality, if this control fails.
  title 'are files created?' # A human-readable title
  desc 'Inspec cases to test whether files are being created or not.'
  input('files').each do |file|
    describe file("/tmp/#{file}") do                  # The actual test
      it { should be_file }
      its('content') { should match file }
    end
  end
end
