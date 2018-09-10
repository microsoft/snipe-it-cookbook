describe http('http://localhost/setup') do
  its('body') { should include "This page will do a system check to make sure your configuration looks correct. We'll add your first user on the next page." }
  its('status') { should cmp 200 }
end
