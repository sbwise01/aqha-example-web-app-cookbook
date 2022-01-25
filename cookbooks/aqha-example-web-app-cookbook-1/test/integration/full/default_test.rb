# InSpec test for recipe aqha-example-web-app::_configure

# The InSpec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('/var/www/html/index.html') do
  its('mode') { should cmp '0644' }
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/var/www/html/meta/availability/availability.html') do
  its('mode') { should cmp '0644' }
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/var/www/html/meta/health/health.html') do
  its('mode') { should cmp '0644' }
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end
