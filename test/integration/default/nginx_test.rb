# # encoding: utf-8

describe service('nginx') do
  it { should be_running }
  it { should be_enabled }
end

describe port('80') do
  it { should be_listening }
end
