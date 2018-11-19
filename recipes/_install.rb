yum_package 'httpd' do
  action :upgrade
end

cookbook_file "/etc/httpd/conf.d/aqha-example-web.conf" do
  source 'aqha-example-web.conf'
  owner 'root'
  group 'root'
  mode '0644'
end

service "httpd" do
  action :enable
end

