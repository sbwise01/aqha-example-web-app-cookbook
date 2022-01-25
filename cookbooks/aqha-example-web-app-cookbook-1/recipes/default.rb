#
# Cookbook:: aqha-example-web-app
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if (node['aqha']['deploy_mode'] == "BAKE")
  include_recipe 'aqha-example-web-app::_install'
elsif (node['aqha']['deploy_mode'] == "DEPLOY")
  include_recipe 'aqha-example-web-app::_configure'
elsif (node['aqha']['deploy_mode'] == "FULL")
  include_recipe 'aqha-example-web-app::_install'
  include_recipe 'aqha-example-web-app::_configure'
end
