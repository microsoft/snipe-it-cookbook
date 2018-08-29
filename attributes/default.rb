default['snipeit']['path'] = '/var/www/snipeit'
default['snipeit']['debug'] = false
default['snipeit']['doc_root'] = node['snipeit']['path'] + '/public'
default['snipeit']['locale'] = 'en'
default['snipeit']['timezone'] = 'US/Pacific'

default['snipeit']['php']['packages'] = [
  'php-bcmath',
  'php-curl',
  'php-fpm',
  'php-gd',
  'php-ldap',
  'php-mbstring',
  'php-mysql',
  'php-pdo',
  'php-zip',
]

default['snipeit']['database']['domain'] = 'corp.yourcompany.com'
default['snipeit']['database']['hostname'] = node['hostname']
default['snipeit']['database']['name'] = 'snipeit'
default['snipeit']['database']['dump_path'] = '/usr/bin'
default['snipeit']['database']['username'] = nil
default['snipeit']['database']['password'] = nil