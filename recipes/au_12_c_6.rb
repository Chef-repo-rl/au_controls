#
# Cookbook:: au_controls
# Recipe:: au_12_c_6
#
# Copyright:: 2018, The Authors, All Rights Reserved.

append_if_no_line "make sure a line is in audit.rules file " do
  path "/etc/audit/rules.d/audit.rules"
  line "-a always,exit -F arch=b32 -S init_module -k module-change"
end

append_if_no_line "make sure a line is in audit.rules file " do
  path "/etc/audit/rules.d/audit.rules"
  line "-a always,exit -F arch=b64 -S init_module -k module-change"
end

execute 'name' do
  command 'service auditd restart'
  # creates '/tmp/something'
  action :run
end