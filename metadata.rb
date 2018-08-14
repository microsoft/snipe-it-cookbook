name 'snipe-it'
maintainer 'Microsoft'
maintainer_email 'chef@microsoft.com'
license 'MIT'
description 'Installs and configures Snipe-IT asset/license management system.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

issues_url 'https://github.com/Microsoft/snipe-it-cookbook/issues'
source_url 'https://github.com/Microsoft/snipe-it-cookbook'
depends 'nginx'
