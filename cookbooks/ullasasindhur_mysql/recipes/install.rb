credentials = data_bag_item('credentials', 'mysql-credentials')
password = credentials['root-password']
database = credentials['database']
userPassword = credentials['user-password']
user = credentials['custom-user']

mysql_service 'default' do
  bind_address '0.0.0.0'
  version '5.7'
  port '3306'
  package_name node['ullasasindhur_mysql']['package_name']
  data_dir '/data'
  initial_root_password password
  action [:create, :start]
end

mysql_database database do
  user 'root'
  password password
  action :create
end

mysql_user user do
  password userPassword
  action :create
end

mysql_user user do
  password userPassword
  database_name database
  host '%'
  privileges [:select, :update, :insert]
  action :grant
end
