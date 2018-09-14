default['snipeit']['debug'] = false
default['snipeit']['path'] = '/var/www/snipeit'
default['snipeit']['doc_root'] = ::File.join(node['snipeit']['path'], 'public')
default['snipeit']['hostname'] = node['fqdn'] ? node['fqdn'] : node['hostname']
default['snipeit']['locale'] = 'en'
default['snipeit']['timezone'] = 'US/Pacific'
default['snipeit']['url'] = 'http://' << node['snipeit']['hostname']
default['snipeit']['version'] = 'master'

default['snipeit']['php']['app_key'] = nil
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
default['snipeit']['database']['hostname'] = '127.0.0.1'
default['snipeit']['database']['name'] = 'snipeit'
default['snipeit']['database']['dump_path'] = '/usr/bin'
default['snipeit']['database']['username'] = nil
default['snipeit']['database']['password'] = nil

default['snipeit']['smtp']['encryption'] = 'tls'
default['snipeit']['smtp']['driver'] = 'smtp'
default['snipeit']['smtp']['host'] = 'smtp.yourcompany.com'
default['snipeit']['smtp']['mailbox'] = 'myinventory@yourcompany.com'
default['snipeit']['smtp']['port'] = 587
default['snipeit']['smtp']['mail_from'] = 'Snipe-IT'
default['snipeit']['smtp']['replyto'] = 'Snipe-IT'
default['snipeit']['smtp']['username'] = nil
default['snipeit']['smtp']['password'] = nil
