#
# Cookbook:: au_controls
# Recipe:: au_12_c_13
#
# Copyright:: 2018, The Authors, All Rights Reserved.

append_if_no_line "make sure a line is in audit.rules file " do
  path "/etc/audit/rules.d/audit.rules"
  line "-a always,exit -F arch=b32 -S rmdir -F perm=x -F auid>=1000 -F auid!=4294967295 -k delete"
end

append_if_no_line "make sure a line is in audit.rules file " do
  path "/etc/audit/rules.d/audit.rules"
  line "-a always,exit -F arch=b64 -S rmdir -F perm=x -F auid>=1000 -F auid!=4294967295 -k delete"
end

execute 'name' do
  command 'service auditd restart'
  # creates '/tmp/something'
  action :run
end

