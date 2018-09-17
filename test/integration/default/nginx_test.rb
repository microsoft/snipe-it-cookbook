# # encoding: utf-8

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

describe port('80') do
  it { should be_listening }
end

describe file('/etc/nginx/sites-available/snipeit') do
  its('content') { should include('root /var/www/snipeit/public') }
  its('content') { should include('unix:/run/php/php7.0-fpm.sock') }
end
