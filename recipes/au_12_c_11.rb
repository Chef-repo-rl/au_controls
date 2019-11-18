#
# Cookbook:: au_controls
# Recipe:: au_12_c_11
#
# Copyright:: 2018, The Authors, All Rights Reserved.

append_if_no_line "make sure a line is in audit.rules file " do
  path "/etc/audit/rules.d/audit.rules"
  line "-a always,exit -F arch=b32 -S rename -F perm=x -F auid>=1000 -F auid!=4294967295 -k delete"
end

append_if_no_line "make sure below line is in audit.rules file " do
  path "/etc/audit/rules.d/audit.rules"
  line "-a always,exit -F arch=b64 -S rename -F perm=x -F auid>=1000 -F auid!=4294967295 -k delete"
end

# service 'auditd' do
#   supports status: true, restart: true, reload: true
#   action :restart
# end
