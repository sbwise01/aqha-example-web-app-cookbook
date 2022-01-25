template "/var/www/html/index.html" do
  source 'index.erb'
  mode '0644'
  owner 'root'
  group 'root'
  variables(
    :environment_name => node['aqha']['environment_name']
  )
end

directory '/var/www/html/meta' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

directory '/var/www/html/meta/availability' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

cookbook_file "/var/www/html/meta/availability/availability.html" do
  source 'web/availability.html'
  owner 'root'
  group 'root'
  mode '0644'
end

directory '/var/www/html/meta/health' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

cookbook_file "/var/www/html/meta/health/health.html" do
  source 'web/health.html'
  owner 'root'
  group 'root'
  mode '0644'
end
