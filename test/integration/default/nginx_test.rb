# # encoding: utf-8

php_socket_path = if os.family == 'debian'
                    '/run/php/php7.0-fpm'
                  else
                    '/var/run/php-fpm/php-fpm'
                  end

describe service('nginx') do
  it { should be_running }
  it { should be_enabled }
end

describe port('80') do
  it { should be_listening }
end

describe file('/etc/nginx/sites-available/snipeit') do
  its('content') { should include('root /var/www/snipeit/public') }
  its('content') { should include('unix:' + php_socket_path + '.sock') }
end
