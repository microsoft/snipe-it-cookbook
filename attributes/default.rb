default['snipeit']['path'] = '/var/www/snipeit'
default['snipeit']['doc_root'] = node['snipeit']['path'] + '/public'

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
