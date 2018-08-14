# # encoding: utf-8
php_packages = %w(php-bcmath php-curl php-gd php-ldap php-mbstring php-mysql php-pdo php-zip)

case os.family
when 'redhat'
  php_packages.append('php-fpm')
when 'debian'
  php_packages.append('php7.0-fpm')
end

php_packages.each do |package|
  describe package(package) do
    it { should be_installed }
  end
end
