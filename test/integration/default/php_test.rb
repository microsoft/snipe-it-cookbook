# # encoding: utf-8

describe service('php7.0-fpm') do
  it { should be_enabled }
  it { should be_running }
end
