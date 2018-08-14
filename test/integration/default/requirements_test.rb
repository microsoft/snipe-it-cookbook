# # encoding: utf-8

case os.family
when 'redhat'
  nginx_user = 'nginx'
when 'debian'
  nginx_user = 'www-data'
end

describe directory('/var/www/snipeit') do
  it { should exist }
  its('owner') { should cmp nginx_user }
  its('group') { should cmp nginx_user }
end
