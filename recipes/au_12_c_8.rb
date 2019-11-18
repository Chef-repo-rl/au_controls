#
# Cookbook:: au_controls
# Recipe:: au_12_c_8
#
# Copyright:: 2018, The Authors, All Rights Reserved.

append_if_no_line "make sure a line is in audit.rules file " do
  path "/etc/audit/rules.d/audit.rules"
  line "-w /sbin/insmod -p x -F auid!=4294967295 -k module-change"
end

# execute 'restart auditd' do
#   command "service auditd restart"
#   # creates '/tmp/something'
#   action :run
# end