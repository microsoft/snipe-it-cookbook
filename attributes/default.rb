default['snipeit']['path'] = '/var/www/snipeit'
default['snipeit']['debug'] = false
default['snipeit']['doc_root'] = node['snipeit']['path'] + '/public'
default['snipeit']['locale'] = 'en'
default['snipeit']['timezone'] = 'US/Pacific'

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
default['snipeit']['database']['hostname'] = node['hostname']
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
