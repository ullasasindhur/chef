# See https://docs.chef.io/workstation/config_rb/ for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ullasasindhur"
client_key               "#{current_dir}/ullasasindhur.pem"
chef_server_url          "https://api.chef.io/organizations/ullasasindhur"
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:secret_file] = "#{current_dir}/secretfile"
knife[:editor] = "notepad"