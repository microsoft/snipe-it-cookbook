# # encoding: utf-8

describe directory('/var/www/snipeit') do
  it { should exist }
  its('owner') { should cmp 'www-data' }
  its('group') { should cmp 'www-data' }
end
