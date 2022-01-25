# InSpec test for all recipes in aqha-example-web-app

# The InSpec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('/etc/httpd/conf.d/aqha-example-web.conf') do
  its('mode') { should cmp '0644' }
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe service('httpd') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
