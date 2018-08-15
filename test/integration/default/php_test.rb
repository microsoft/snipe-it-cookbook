# # encoding: utf-8
php_packages = %w(php-bcmath php-common php-gd php-ldap php-mbstring php-mysql)

case os.family
when 'redhat'
  php_packages.concat(%w(php-fpm php-pdo))
when 'debian'
  php_packages.concat(%w(php-curl php7.0-fpm php-zip))
end

php_packages.each do |package|
  describe package(package) do
    it { should be_installed }
  end
end
