#
# Cookbook:: au_controls
# Recipe:: au_12_c_9
#
# Copyright:: 2018, The Authors, All Rights Reserved.

append_if_no_line "make sure a line is in audit.rules file " do
  path "/etc/audit/rules.d/audit.rules"
  line "-w /sbin/rmmod-p x -F auid!=4294967295 -k module-change"
end

# execute 'name' do
#   command "service auditd stop;service auditd start"
#   # creates '/tmp/something'
#   action :run
# end